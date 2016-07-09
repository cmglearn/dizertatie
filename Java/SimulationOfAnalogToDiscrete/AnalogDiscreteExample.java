package com.threads;

public class AnalogDiscreteExample
{
    private static final String INPUT_FILE  = "d:/WORK/workspaces/JBossDevStudio8.0.0.GA/ws700SP52/JavaPuzzles/src/main/com/threads/input.csv";
    private static final String OUTPUT_FILE = "d:/WORK/workspaces/JBossDevStudio8.0.0.GA/ws700SP52/JavaPuzzles/src/main/com/threads/output.csv";

    public static void main( String[] args )
    {
        SampleBuffer drop = new SampleBuffer( );
        drop.setNoOfSamples( 200 );
        AnalogThread analogSignal = new AnalogThread( drop );
        analogSignal.readInput( INPUT_FILE );
        // analogSignal.printData( );
        ( new Thread( analogSignal ) ).start( );
        ( new Thread( new DiscreteThread( drop, OUTPUT_FILE ) ) ).start( );
    }
}