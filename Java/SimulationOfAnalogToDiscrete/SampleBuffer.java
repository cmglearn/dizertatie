package com.threads;

public class SampleBuffer
{
    private double value     = -2;

    private int    noOfSamples;
    private int    sampleIdx = 1;

    public synchronized double take( )
    {
        while( ( sampleIdx <= noOfSamples ) && ( value != -1 ) )
        {
            try
            {
                wait( );
            }
            catch( InterruptedException e )
            {
            }
        }
        double tmpValue = value;
        System.out.println( "DiscreteThread: read - " + tmpValue );
        sampleIdx = 1;
        notifyAll( );
        return tmpValue;
    }

    public synchronized void put( double v )
    {
        while( sampleIdx > noOfSamples )
        {
            try
            {
                wait( );
            }
            catch( InterruptedException e )
            {
            }
        }

        putTheValue( v );
        sampleIdx++;
        notifyAll( );
    }

    private void putTheValue( double v )
    {
        // System.out.println( "Put:" + v );
        System.out.println( "AnalogThread: put - " + v );
        this.value = v;
    }

    public void setNoOfSamples( int noOfSamples )
    {
        this.noOfSamples = noOfSamples;
    }

}
