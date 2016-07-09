package com.threads;

public class Drop
{
    // Message sent from producer to consumer.
    private String  value;
    // True if consumer should wait for producer to send message,
    // false if producer should wait for consumer to retrieve message.
    private boolean empty = true;

    public synchronized String take( )
    {
        // Wait until message is available.
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
        // Notify producer that status has changed.
        notifyAll( );
        return value;
    }

    public synchronized void put( String value )
    {
        // Wait until message has been retrieved.
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
        this.value = value;
        // Notify consumer that status has changed.
        notifyAll( );
    }
}