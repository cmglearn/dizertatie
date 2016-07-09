package com.threads;

public class SampleBuffer
{

    private Pair    value = null;
    private boolean empty = true;

    public synchronized Pair take( )
    {
        while( empty )
        {
            try
            {
                wait( );
            }
            catch( InterruptedException e )
            {
            }
        }
        // Toggle status.
        empty = true;
        Pair tmpValue = null;
        if( value != null )
        {
            tmpValue = new Pair( value.getTime( ), value.getValue( ) );
        }
        // Notify producer that status has changed.
        notifyAll( );
        return tmpValue;
    }

    public synchronized void put( Pair v )
    {
        while( !empty )
        {
            try
            {
                wait( );
            }
            catch( InterruptedException e )
            {
            }
        }
        // Toggle status.
        empty = false;
        // Store message.
        this.value = v;
        // Notify consumer that status has changed.
        notifyAll( );
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
