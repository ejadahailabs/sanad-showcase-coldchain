package ReqUsbItem {
    comment /* GENERATED from the Markdown requirement corpus at fc4bfca9067b6491.
       Read-only: edit the Markdown requirement, not this file. Sanad regenerates it on
       every corpus change and the same corpus always gives byte-identical text. */

    requirement <'MRTM-USI-001'> MRTM_USI_001 {
        doc /* The USB item shall present the event log as a read-only mass-storage volume within 30 s of connection. */
    }

    requirement <'MRTM-USI-002'> MRTM_USI_002 {
        doc /* When the USB host sends a write request, the USB item shall inhibit the write to the **Event Log**. */
    }
}
