package com.threads;

public class AnalogDiscreteExample
{
    private static final String INPUT_FILE     = "d:/WORK/workspaces/JBossDevStudio8.0.0.GA/ws700SP52/JavaPuzzles/src/main/com/threads/input.csv";
    private static final String OUTPUT_FILE    = "d:/WORK/workspaces/JBossDevStudio8.0.0.GA/ws700SP52/JavaPuzzles/src/main/com/threads/output.csv";
    private static final String OUTPUT_AD_FILE = "d:/WORK/workspaces/JBossDevStudio8.0.0.GA/ws700SP52/JavaPuzzles/src/main/com/threads/output_ad.csv";

    public static void main( String[] args )
    {
        SampleBuffer drop = new SampleBuffer( );
        AnalogThread analogSignal = new AnalogThread( drop, INPUT_FILE );
        ( new Thread( analogSignal ) ).start( );
        // ( new Thread( new DiscreteThread( drop, OUTPUT_FILE, 10 ) ) ).start( );
        ( new Thread( new DiscreteThread( drop, OUTPUT_AD_FILE, 10 ) ) ).start( );
    }
}