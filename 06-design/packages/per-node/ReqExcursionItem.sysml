package ReqExcursionItem {
    comment /* GENERATED from the Markdown requirement corpus at 2d3dd8e8113bcc4b.
       Read-only: edit the Markdown requirement, not this file. Sanad regenerates it on
       every corpus change and the same corpus always gives byte-identical text. */

    requirement <'MRTM-EXI-001'> MRTM_EXI_001 {
        doc /* The excursion item shall report the early excursion at the first valid sample outside the allowed band. */
    }

    requirement <'MRTM-EXI-002'> MRTM_EXI_002 {
        doc /* The excursion item shall report the confirmed excursion at the 31st consecutive valid sample outside the allowed band. */
    }

    requirement <'MRTM-EXI-003'> MRTM_EXI_003 {
        doc /* The excursion item shall report the excursion end at the 31st consecutive valid sample inside the allowed band. */
    }
}
