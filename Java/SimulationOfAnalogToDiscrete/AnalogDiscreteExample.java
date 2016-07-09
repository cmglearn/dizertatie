package com.threads;

public class AnalogDiscreteExample
{
    public static void main( String[] args )
    {
        SampleBuffer drop = new SampleBuffer( );
        drop.setNoOfSamples( 5 );
        ( new Thread( new AnalogThread( drop ) ) ).start( );
        ( new Thread( new DiscreteThread( drop ) ) ).start( );
    }
}