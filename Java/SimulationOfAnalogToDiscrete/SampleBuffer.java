package com.threads;

public class SampleBuffer
{
    private Pair value     = new Pair( -2, -2 );

    private int  noOfSamples;
    private int  sampleIdx = 1;

    public synchronized Pair take( FileWriter fw )
    {
        while( ( sampleIdx <= noOfSamples ) && ( value.getValue( ) != -1 ) )
        {
            try
            {
                wait( );
            }
            catch( InterruptedException e )
            {
            }
        }
        Pair tmpValue = value;
        System.out.println( "DiscreteThread: read - " + tmpValue );
        fw.perform( tmpValue );
        sampleIdx = 1;
        notifyAll( );
        return tmpValue;
    }

    public synchronized void put( Pair v )
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

    private void putTheValue( Pair v )
    {
        // System.out.println( "Put:" + v );
        System.out.println( "AnalogThread: put - " + v );
        this.value = v;
    }

    public void setNoOfSamples( int noOfSamples )
    {
        this.noOfSamples = noOfSamples;
    }

    public static class Pair
    {
        private final double time;
        private final double value;

        public Pair( double time,
                     double value )
        {
            super( );
            this.time = time;
            this.value = value;
        }

        public double getTime( )
        {
            return time;
        }

        public double getValue( )
        {
            return value;
        }

        @Override
        public String toString( )
        {
            return "Pair [time=" + time + ", value=" + value + "]";
        }

    }
}
