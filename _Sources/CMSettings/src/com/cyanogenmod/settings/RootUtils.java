package com.cyanogenmod.settings;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;

public final class RootUtils {
	
	/**
	 * Determines that file oparations should use SU
	 * @return True if should
	 */
	public static boolean shouldSU() {
		return true;
	}
	
	/**
	 * Check is file exists
	 * @param fname Filename
	 * @return True if exists
	 */
    public static boolean fileExists(String fname) {
        return cmdExecute("test -f " + fname) == 0;
    }
    
	/**
	 * Check is file readable
	 * @param fname Filename
	 * @return True if readable
	 */
    public static boolean fileIsReadable(String fname) {
        return cmdExecute("test -r " + fname) == 0;
    }
    
	/**
	 * Check is file writeable
	 * @param fname Filename
	 * @return True if writeable
	 */
    public static boolean fileIsWritable(String fname) {
        return cmdExecute("test -w " + fname) == 0;
    }
    
    /**
     * Read one line from file
     * @param fname Filename
     * @return First line of file
     */
    public static String fileReadOneLine(String fname) {
	    Runtime runtime = Runtime.getRuntime();
	    Process proc = null;
	    OutputStreamWriter osw = null;
	    String command="cat \"" + fname + "\"";

	    try {
	        proc = runtime.exec("su");
	        osw = new OutputStreamWriter(proc.getOutputStream());
	        osw.write(command);
	        osw.flush();
	        osw.close();
	    } catch (IOException ex) {
	        ex.printStackTrace();
	    } finally {
	        if (osw != null) {
	            try {
	                osw.close();
	            } catch (IOException e) {
	                e.printStackTrace();                    
	            }
	        }
	    }
	    try {
	        if (proc != null) {
	            proc.waitFor();
	        }
	    } catch (InterruptedException e) {
	        e.printStackTrace();
	    }
	    
	    String outputStr = null;
	    try {
		    BufferedReader reader = new BufferedReader(new InputStreamReader(proc.getInputStream()));
			if (reader.ready()) {
				outputStr = reader.readLine();
			}
			reader.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	    return outputStr;
    }
    
    /**
     * Write line to file
     * @param fname Filename
     * @param value Value
     * @return Is success
     */
    public static boolean fileWriteOneLine(String fname, String value) {
	    Runtime runtime = Runtime.getRuntime();
	    Process proc = null;
	    OutputStreamWriter osw = null;
	    String command="echo \"" + value + "\" > \"" + fname + "\"";
	    boolean IsSuccess = true;
	    
	    try {
	        proc = runtime.exec("su");
	        osw = new OutputStreamWriter(proc.getOutputStream());
	        osw.write(command);
	        osw.flush();
	        osw.close();
	    } catch (IOException ex) {
	        ex.printStackTrace();
	        IsSuccess = false;
	    } finally {
	        if (osw != null) {
	            try {
	                osw.close();
	            } catch (IOException e) {
	                e.printStackTrace();                    
	            }
	        }
	    }
	    try {
	        if (proc != null) {
	            proc.waitFor();
	        }
	    } catch (InterruptedException e) {
	        e.printStackTrace();
	        IsSuccess = false;
	    }
	    return IsSuccess;
    }
    
    /**
     * Executes command and receive exit code
     * @param command Command to execute
     * @return Exit code
     */
    private static int cmdExecute(String command) {
    	Runtime runtime = Runtime.getRuntime();
    	Process proc = null;
    	OutputStreamWriter osw = null;
    	
    	try { // Run Script
    		proc = runtime.exec("su");
    		osw = new OutputStreamWriter(proc.getOutputStream());
    		osw.write(command);
    		osw.flush();
    		osw.close();
    	} catch (IOException ex) {
    		ex.printStackTrace();
    	} finally {
    		if (osw != null) {
    			try {
    				osw.close();
    			} catch (IOException e) {
    				e.printStackTrace();                    
    			}
    		}
    	}
    	try {
    		if (proc != null)
    			proc.waitFor();
    	} catch (InterruptedException e) {
    		e.printStackTrace();
    	}
    	return proc.exitValue();
	}
 
    public static void setProp(String prop, String value) {
    	cmdExecute("setprop " + prop + " " + value);
    }
    
}
