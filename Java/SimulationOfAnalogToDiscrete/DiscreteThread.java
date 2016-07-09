package com.threads;

public class DiscreteThread implements Runnable
{
    private SampleBuffer sampleBuffer;

    public DiscreteThread( SampleBuffer sampleBuffer )
    {
        this.sampleBuffer = sampleBuffer;
    }

    @Override
    public void run( )
    {
        do
        {
            double nextDouble = sampleBuffer.take( );
            if( nextDouble >= -1 )
            {
                //System.out.println( "DiscreteThread: read - " + nextDouble );
            }
            if( nextDouble == -1.0 )
            {
                break;
            }

        } while( true );
    }

}
