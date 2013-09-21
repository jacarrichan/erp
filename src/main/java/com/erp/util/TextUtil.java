package com.erp.util;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;

public class TextUtil
{
	private static String path = "D:/";
	private static String filenameTemp;

	public static boolean creatTxtFile(String name) throws IOException
	{
		boolean flag = false;
		filenameTemp = path + name + ".txt";
		File filename = new File(filenameTemp);
		if (!filename.exists())
		{
			filename.createNewFile();
			flag = true;
		}
		return flag;
	}

	@SuppressWarnings("unused")
	public static boolean writeTxtFile(String newStr ) throws IOException
	{

		// 先读取原有文件内容，然后进行写入操作
		boolean flag = false;
		String filein = newStr + "\r\n";
		String temp = "";

		FileInputStream fis = null;
		InputStreamReader isr = null;
		BufferedReader br = null;

		FileOutputStream fos = null;
		PrintWriter pw = null;
		try
		{
			// 文件路径
			File file = new File(filenameTemp);
			// 将文件读入输入流
			fis = new FileInputStream(file);
			isr = new InputStreamReader(fis);
			br = new BufferedReader(isr);
			StringBuffer buf = new StringBuffer();

			// 保存该文件原有的内容
			for (int j = 1; (temp = br.readLine()) != null; j++)
			{
				buf = buf.append(temp);
				// System.getProperty("line.separator")
				// 行与行之间的分隔符 相当于“\n”
				buf = buf.append(System.getProperty("line.separator"));
			}
			buf.append(filein);

			fos = new FileOutputStream(file);
			pw = new PrintWriter(fos);
			pw.write(buf.toString().toCharArray());
			pw.flush();
			flag = true;
		} catch (IOException e1){
			throw e1;
		} finally{
			if (pw != null)
			{
				pw.close();
			}
			if (fos != null)
			{
				fos.close();
			}
			if (br != null)
			{
				br.close();
			}
			if (isr != null)
			{
				isr.close();
			}
			if (fis != null)
			{
				fis.close();
			}
		}
		return flag;
	}
	public static void main(String[] args )
	{
		
		
		
		try
		{
			creatTxtFile("tet");
			writeTxtFile("1312312312312312");
		} catch (IOException e)
		{
			e.printStackTrace();
		}
	}
	
}
