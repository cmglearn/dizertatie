package com.threads;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Random;

import com.threads.SampleBuffer.Pair;

public class AnalogThread implements Runnable
{
    private SampleBuffer sampleBuffer;
    private List<Pair>   data = new ArrayList( );

    public AnalogThread( SampleBuffer sampleBuffer )
    {
        this.sampleBuffer = sampleBuffer;
    }

    @Override
    public void run( )
    {
        for( Pair p : data )
        {
            sampleBuffer.put( p );
        }
        sampleBuffer.put( new Pair( -1, -1 ) );
    }

    public void readInput( String filePath )
    {
        try
        {
            FileInputStream fis = new FileInputStream( new File( filePath ) );

            // Construct BufferedReader from InputStreamReader
            BufferedReader br = new BufferedReader( new InputStreamReader( fis ) );

            String line = null;
            while( ( line = br.readLine( ) ) != null )
            {
                // System.out.println(line);
                data.add( new Pair( Double.parseDouble( line.split( "," )[0] ), Double.parseDouble( line.split( "," )[1] ) ) );
            }

            br.close( );
        }
        catch( IOException e )
        {
            e.printStackTrace( );
        }
    }

    public void printData( )
    {
        for( Pair p : data )
        {
            System.out.println( p );
        }
    }
}
