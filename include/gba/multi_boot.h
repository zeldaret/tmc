#ifndef GUARD_GBA_MULTI_BOOT_H
#define GUARD_GBA_MULTI_BOOT_H

#define MULTIBOOT_NCHILD        3       // Maximum number of slaves
#define MULTIBOOT_HEADER_SIZE   0xc0    // Header size
#define MULTIBOOT_SEND_SIZE_MIN 0x100   // Minimum transmission size
#define MULTIBOOT_SEND_SIZE_MAX 0x40000 // Maximum transmission size

struct MultiBootParam
{
    u32 system_work[5];                   // Can be rewritten within system call. 
                                          // Used with library also.
    u8 handshake_data;                    // Handshake data from client
    u8 padding;
    u16 handshake_timeout;                // Handshake timeout check counter
    u8 probe_count;                       // If not 0, during client recognition or  
                                          // boot program transfer
    u8 client_data[MULTIBOOT_NCHILD];     // Handshake data from client
    u8 palette_data;                      // Palette's flashing parameter during load 
                                          // for client
    u8 response_bit;                      // When high probability that slave  
                                          // connected, 4P-2P: d3-d1 is 1.
    u8 client_bit;                        // For slave distinguished as client, 
                                          // 4P-2P: d3-d1 is 1. 
    u8 reserved1;                         // Reserved
    const u8 *boot_srcp;                  // Boot program start (after header)
    const u8 *boot_endp;                  // Boot program end pointer
    const u8 *masterp;                    // Pointer to header referenced and output 
                                          // by master
    u8 *reserved2[MULTIBOOT_NCHILD];      // Reserved
    u32 system_work2[4];                  // Can be rewritten within system call. 
    u8 sendflag;                          // If SC7=1 and during send, not 0
    u8 probe_target_bit;                  // If target recognized with client, 
                                          // 4P-2P: d3-d1 is 1.
    u8 check_wait;                        // Wait frame until recoginition with client
    u8 server_type;                       // client recognize method   0= Low Speed
                                          // 1= High Speed
};

/* Error Code
 * If value returned by MultiBootMain() is not 0, an error listed
 * below has occurred. However, there is no need to have separate error
 * messages for all error code types.
 * "Communication Error. Please check connection. Retry with START."
 * "Turn off power, check connection, and turn on again."
 * "Slave is not connected."
 * "Cannot recognize the slave."
 * ,etc.  Messages easy for the player to understand are good.
 * NO_PROBE_TARGET: When recognizing client all machines returned 
 * abnormal data and there is no target.
 * NO_DLREADY: client did not return a download preparations 
 * possible message.
 * BOOT_FAILURE: MultiBoot() system call returned an error.
 * HANDSHAKE_FAILURE: Failed to do handshake with master which should 
 * occur immediately after boot of slave.
 * (Slave may be in infinite loop, request that power be turned off 
 * and on again.)
 */
#define MULTIBOOT_ERROR_04                0x04
#define MULTIBOOT_ERROR_08                0x08
#define MULTIBOOT_ERROR_0c                0x0c
#define MULTIBOOT_ERROR_40                0x40
#define MULTIBOOT_ERROR_44                0x44
#define MULTIBOOT_ERROR_48                0x48
#define MULTIBOOT_ERROR_4c                0x4c
#define MULTIBOOT_ERROR_80                0x80
#define MULTIBOOT_ERROR_84                0x84
#define MULTIBOOT_ERROR_88                0x88
#define MULTIBOOT_ERROR_8c                0x8c
#define MULTIBOOT_ERROR_NO_PROBE_TARGET   0x50
#define MULTIBOOT_ERROR_NO_DLREADY        0x60
#define MULTIBOOT_ERROR_BOOT_FAILURE      0x70
#define MULTIBOOT_ERROR_HANDSHAKE_FAILURE 0x71

/* After an error, or when a value other than 0xffff is returned,
 * the avoid chattering wait(frames) until redo connection check.
 * The client timeout is about 11 frames so use value sufficiently
 * longer than this.
 * Usually during this time the MASTER_INFO is sent, but when there
 * is a system call error, nothing is sent at this time and it waits.
 * Then, during this time period MASTER_INFO is sent.
 */
#define MULTIBOOT_CONNECTION_CHECK_WAIT 15

/* Recognition of Slave
 * Value set in MultiBootParam structure member server_type 
 * MULTIBOOT_SERVER_TYPE_NORMAL: Slow speed recognition mode
 *   The MultiBootMain() function communicates 2 bytes with one call.
 *   Therefore, processing returns from MultiBootMain() function 
 *   in short time.
 * MULTIBOOT_SERVER_TYPE_QUICK: High speed recognition mode
 *   In MultiBootMain() function as many consecutive communications
 *    are done as possible.
 *   Therefore, processing may not return from MultiBootMain() for 
 *   several dozen frames.
 *   During this time, there is no problem if processing for sound and 
 *   display cannot be done.  If processing for sound and display is 
 *   done with timer interrupt processing, you can use.
 */
#define MULTIBOOT_SERVER_TYPE_NORMAL 0
#define MULTIBOOT_SERVER_TYPE_QUICK  1

/* Timeout for slave's final start up check   400 frames  */
#define MULTIBOOT_HANDSHAKE_TIMEOUT 400

#endif // GUARD_GBA_MULTI_BOOT_H
