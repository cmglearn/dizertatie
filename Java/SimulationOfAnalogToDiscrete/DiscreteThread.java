package com.threads;

import com.threads.SampleBuffer.Pair;

public class DiscreteThread implements Runnable
{
    private SampleBuffer sampleBuffer;
    private FileWriter   fw;
    private String       filePath;
    private int          noOfSamples;

    public DiscreteThread( SampleBuffer sampleBuffer,
                           String filePath,
                           int noOfSamples )
    {
        this.sampleBuffer = sampleBuffer;
        this.filePath = filePath;
        this.fw = new FileWriter( );
        this.noOfSamples = noOfSamples;
    }

    @Override
    public void run( )
    {
        fw.fileOpen( filePath );
        int sampleIdx = 1;
        Pair hold = null;
        do
        {
            Pair nextSample = sampleBuffer.take( );
            if( nextSample == null )
            {
                break;
            }
            if( sampleIdx == 1 || sampleIdx == noOfSamples )
            {
                sampleIdx = 1;
                hold = nextSample;
            }
            // fw.perform( new Pair( nextSample.getTime( ), hold.getValue( ) ) );
            fw.perform( nextSample, new Pair( nextSample.getTime( ), hold.getValue( ) ) );
            sampleIdx++;
        } while( true );
        fw.closeFile( );
    }

}
