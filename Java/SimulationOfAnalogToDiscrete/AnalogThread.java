package com.threads;

import java.util.Random;

public class AnalogThread implements Runnable
{
    private SampleBuffer sampleBuffer;

    public AnalogThread( SampleBuffer sampleBuffer )
    {
        this.sampleBuffer = sampleBuffer;
    }

    @Override
    public void run( )
    {
        Random random = new Random( );

        for( int i = 0; i < 10000; i++ )
        {
            double nextDouble = random.nextDouble( );
            //System.out.println( "AnalogThread: put - " + nextDouble );
            sampleBuffer.put( nextDouble );
        }
        sampleBuffer.put( -1.0 );
    }

}
