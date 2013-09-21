package com.erp.util;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Enumeration;
import java.util.zip.ZipEntry;
import java.util.zip.ZipException;
import java.util.zip.ZipFile;
import java.util.zip.ZipOutputStream;


public class ZipUtils
{
	 private ZipUtils(){};
	    
	    /**
	     * APDPlat中的重要打包机制
	     * 将jar文件中的某个文件夹里面的内容复制到某个文件夹
	     * @param jar 包含静态资源的jar包
	     * @param subDir jar中包含待复制静态资源的文件夹名称
	     * @param loc 静态资源复制到的目标文件夹
	     * @param force 目标静态资源存在的时候是否强制覆盖
	     */
	    public static void unZip(String jar, String subDir, String loc, boolean force){
	        try {
	            File base=new File(loc);
	            if(!base.exists()){
	                base.mkdirs();
	            }
	            
	            ZipFile zip=new ZipFile(new File(jar));
	            Enumeration<? extends ZipEntry> entrys = zip.entries();
	            while(entrys.hasMoreElements()){
	                ZipEntry entry = entrys.nextElement();
	                String name=entry.getName();
	                if(!name.startsWith(subDir)){
	                    continue;
	                }
	                //去掉subDir
	                name=name.replace(subDir,"").trim();
	                if(name.length()<2){
	                    System.out.println(name+" 长度 < 2");
	                    continue;
	                }
	                if(entry.isDirectory()){
	                    File dir=new File(base,name);
	                    if(!dir.exists()){
	                        dir.mkdirs();
	                        System.out.println("创建目录");
	                    }else{
	                    	  System.out.println("目录已经存在");
	                    }
	                    System.out.println(name+" 是目录");
	                }else{
	                    File file=new File(base,name);
	                    if(file.exists() && force){
	                        file.delete();
	                    }
	                    if(!file.exists()){
	                        InputStream in=zip.getInputStream(entry);
	                         copyFile(in,file);
	                         System.out.println("创建文件");
	                    }else{
	                         System.out.println("文件已经存在");
	                    }
	                     System.out.println(name+" 不是目录");
	                }
	            }
	        } catch (ZipException ex) {
	        	  System.out.println("文件解压失败");
	        } catch (IOException ex) {
	        	  System.out.println("文件操作失败");
	        }
	    }
	    
	   /**
	     * 创建ZIP文件
	     * @param sourcePath 文件或文件夹路径
	     * @param zipPath 生成的zip文件存在路径（包括文件名）
	     */
	    public static void createZip(String sourcePath, String zipPath) {
	        FileOutputStream fos = null;
	        ZipOutputStream zos = null;
	        try {
	            fos = new FileOutputStream(zipPath);
	            zos = new ZipOutputStream(fos);
	            writeZip(new File(sourcePath), "", zos);
	        } catch (FileNotFoundException e) {
	        	  System.out.println("文件未找到，创建ZIP文件失败");
	        } finally {
	            try {
	                if (zos != null) {
	                    zos.close();
	                }
	            } catch (IOException e) {
	            	  System.out.println("创建ZIP文件失败");
	            }

	        }
	    }
	    
	    private static void writeZip(File file, String parentPath, ZipOutputStream zos) {
	        if(file.exists()){
	            if(file.isDirectory()){//处理文件夹
	                parentPath+=file.getName()+File.separator;
	                File [] files=file.listFiles();
	                for(File f:files){
	                    writeZip(f, parentPath, zos);
	                }
	            }else{
	                FileInputStream fis=null;
	                try {
	                    fis=new FileInputStream(file);
	                    ZipEntry ze = new ZipEntry(parentPath + file.getName());
	                    zos.putNextEntry(ze);
	                    byte [] content=new byte[1024];
	                    int len;
	                    while((len=fis.read(content))!=-1){
	                        zos.write(content,0,len);
	                        zos.flush();
	                    }
	                    
	                
	                } catch (FileNotFoundException e) {
	                } catch (IOException e) {
	                }finally{
	                    try {
	                        if(fis!=null){
	                            fis.close();
	                        }
	                    }catch(IOException e){
	                    	  System.out.println("创建ZIP文件失败");
	                    }
	                }
	            }
	        }
	    }    
	    public static void main(String[] args) {
	        ZipUtils.createZip("D:\\SysDevDaily.xls", "D:\\backup1.zip");
	      //  ZipUtils.createZip("D:\\workspaces\\netbeans\\APDPlat\\APDPlat_Web\\target\\APDPlat_Web-2.2\\platform\\index.jsp", "D:\\workspaces\\netbeans\\APDPlat\\APDPlat_Web\\target\\APDPlat_Web-2.2\\platform\\index.zip");
	        
	    }
	    
	    public static void copyFile(InputStream in, File outFile){
	        OutputStream out = null;
	        try {
	            byte[] data=readAll(in);
	            out = new FileOutputStream(outFile);
	            out.write(data, 0, data.length);
	            out.close();
	        } catch (Exception ex) {
	            System.out.println("文件操作失败");
	        } finally {
	            try {
	                if(in!=null){
	                    in.close();
	                }
	            } catch (IOException ex) {
	             System.out.println("文件操作失败");
	            }
	            try {
	                if(out!=null){
	                    out.close();
	                }
	            } catch (IOException ex) {
	             System.out.println("文件操作失败");
	            }
	        }
	    }
	    
	    public static byte[] readAll(File file){
	        try {
	            return readAll(new FileInputStream(file));
	        } catch (Exception ex) {
	            System.out.println("读取文件失败");
	        }
	        return null;
	    }
	    
	    public static byte[] readAll(InputStream in){
	        ByteArrayOutputStream out = new ByteArrayOutputStream();
	        try {
	            byte[] buffer = new byte[1024];
	            for (int n ; (n = in.read(buffer))>0 ; ) {
	                out.write(buffer, 0, n);
	            }
	        } catch (IOException ex) {
	            System.out.println("读取文件失败");
	        }
	        return out.toByteArray();
	    }

}
