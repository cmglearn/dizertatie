package com.threads;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileOutputStream;
import java.io.OutputStreamWriter;

import com.threads.SampleBuffer.Pair;

public class FileWriter
{
    private BufferedWriter bw;

    public void fileOpen( String filePath )
    {
        try
        {
            File fout = new File( filePath );
            FileOutputStream fos = new FileOutputStream( fout );
            bw = new BufferedWriter( new OutputStreamWriter( fos ) );
        }
        catch( Exception e )
        {
            e.printStackTrace( );
        }
    }

    public void perform( Pair p )
    {
        try
        {
            bw.write( p.getTime( ) + "," + p.getValue( ) );
            bw.newLine( );
            bw.flush( );
        }
        catch( Exception e )
        {
            e.printStackTrace( );
        }
    }

    public void closeFile( )
    {
        try
        {
            bw.close( );
        }
        catch( Exception e )
        {
            e.printStackTrace( );
        }
    }

    public static void main( String[] args )
    {
        FileWriter fw = new FileWriter( );
        fw.fileOpen( "d:/WORK/workspaces/JBossDevStudio8.0.0.GA/ws700SP52/JavaPuzzles/src/main/com/threads/output.csv" );
        fw.perform( new Pair( 1.2, 3.4 ) );

        fw.closeFile( );
    }
}
