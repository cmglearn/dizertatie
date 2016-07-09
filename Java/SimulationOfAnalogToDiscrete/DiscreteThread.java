package com.threads;

import com.threads.SampleBuffer.Pair;

public class DiscreteThread implements Runnable
{
    private SampleBuffer sampleBuffer;
    private FileWriter   fw;
    private String       filePath;

    public DiscreteThread( SampleBuffer sampleBuffer,
                           String filePath )
    {
        this.sampleBuffer = sampleBuffer;
        this.filePath = filePath;
        this.fw = new FileWriter( );
    }

    @Override
    public void run( )
    {
        fw.fileOpen( filePath );
        do
        {
            Pair nextSample = sampleBuffer.take( fw );
            if( nextSample.getValue( ) == -1.0 )
            {
                break;
            }

        } while( true );
        fw.closeFile( );
    }

}
