cwlVersion: v1.0
steps:
  read-potential-cases-i2b2:
    run: read-potential-cases-i2b2.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  depression--phenotype-xmajor---primary:
    run: depression--phenotype-xmajor---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-i2b2/output
  depression--phenotype-psychosis---primary:
    run: depression--phenotype-psychosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: depression--phenotype-xmajor---primary/output
  depression--phenotype-unspecified---primary:
    run: depression--phenotype-unspecified---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: depression--phenotype-psychosis---primary/output
  current-depression--phenotype---primary:
    run: current-depression--phenotype---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: depression--phenotype-unspecified---primary/output
  psychotic-depression--phenotype---primary:
    run: psychotic-depression--phenotype---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: current-depression--phenotype---primary/output
  other-depression--phenotype---primary:
    run: other-depression--phenotype---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: psychotic-depression--phenotype---primary/output
  phenotype-depression---primary:
    run: phenotype-depression---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: other-depression--phenotype---primary/output
  moderate-depression--phenotype---primary:
    run: moderate-depression--phenotype---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: phenotype-depression---primary/output
  partial-depression--phenotype---primary:
    run: partial-depression--phenotype---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: moderate-depression--phenotype---primary/output
  depression--phenotype-episode---primary:
    run: depression--phenotype-episode---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: partial-depression--phenotype---primary/output
  depression--phenotype-dysthymia---primary:
    run: depression--phenotype-dysthymia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: depression--phenotype-episode---primary/output
  reactive-depression--phenotype---primary:
    run: reactive-depression--phenotype---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: depression--phenotype-dysthymia---primary/output
  depression--phenotype-remission---primary:
    run: depression--phenotype-remission---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: reactive-depression--phenotype---primary/output
  mixed-depression--phenotype---primary:
    run: mixed-depression--phenotype---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: depression--phenotype-remission---primary/output
  depression--phenotype-anxiety---primary:
    run: depression--phenotype-anxiety---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: mixed-depression--phenotype---primary/output
  depression--phenotype-sinepin---primary:
    run: depression--phenotype-sinepin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: depression--phenotype-anxiety---primary/output
  depression--phenotype-review---primary:
    run: depression--phenotype-review---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: depression--phenotype-sinepin---primary/output
  depression--phenotype-interest---primary:
    run: depression--phenotype-interest---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: depression--phenotype-review---primary/output
  depression--phenotype-depressed---primary:
    run: depression--phenotype-depressed---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: depression--phenotype-interest---primary/output
  depression---primary:
    run: depression---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: depression--phenotype-depressed---primary/output
  depression--phenotype-375mg---primary:
    run: depression--phenotype-375mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: depression---primary/output
  depression--phenotype-sertraline---primary:
    run: depression--phenotype-sertraline---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: depression--phenotype-375mg---primary/output
  depression--phenotype-anafranil---primary:
    run: depression--phenotype-anafranil---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: depression--phenotype-sertraline---primary/output
  depression--phenotype-500mg---primary:
    run: depression--phenotype-500mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: depression--phenotype-anafranil---primary/output
  depression--phenotype-300mg---primary:
    run: depression--phenotype-300mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: depression--phenotype-500mg---primary/output
  depression--phenotype-butriptyline---primary:
    run: depression--phenotype-butriptyline---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: depression--phenotype-300mg---primary/output
  depression--phenotype-doxepin---primary:
    run: depression--phenotype-doxepin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: depression--phenotype-butriptyline---primary/output
  depression--phenotype-dosulepin---primary:
    run: depression--phenotype-dosulepin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: depression--phenotype-doxepin---primary/output
  depression--phenotype-tryptophan---primary:
    run: depression--phenotype-tryptophan---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: depression--phenotype-dosulepin---primary/output
  depression--phenotype-solution---primary:
    run: depression--phenotype-solution---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: depression--phenotype-tryptophan---primary/output
  depression--phenotype-lofepramine---primary:
    run: depression--phenotype-lofepramine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: depression--phenotype-solution---primary/output
  depression--phenotype-nortriptyline---primary:
    run: depression--phenotype-nortriptyline---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: depression--phenotype-lofepramine---primary/output
  depression--phenotype-tablet---primary:
    run: depression--phenotype-tablet---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: depression--phenotype-nortriptyline---primary/output
  depression--phenotype-limbitrol---primary:
    run: depression--phenotype-limbitrol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: depression--phenotype-tablet---primary/output
  depression--phenotype-trimipramine---primary:
    run: depression--phenotype-trimipramine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule36
      potentialCases:
        id: potentialCases
        source: depression--phenotype-limbitrol---primary/output
  depression--phenotype-injection---primary:
    run: depression--phenotype-injection---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule37
      potentialCases:
        id: potentialCases
        source: depression--phenotype-trimipramine---primary/output
  depression--phenotype-paroxetine---primary:
    run: depression--phenotype-paroxetine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule38
      potentialCases:
        id: potentialCases
        source: depression--phenotype-injection---primary/output
  depression--phenotype-fluoxetine---primary:
    run: depression--phenotype-fluoxetine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule39
      potentialCases:
        id: potentialCases
        source: depression--phenotype-paroxetine---primary/output
  depression--phenotype-lentizol---primary:
    run: depression--phenotype-lentizol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule40
      potentialCases:
        id: potentialCases
        source: depression--phenotype-fluoxetine---primary/output
  depression--phenotype-amitript---primary:
    run: depression--phenotype-amitript---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule41
      potentialCases:
        id: potentialCases
        source: depression--phenotype-lentizol---primary/output
  depression--phenotype-thaden---primary:
    run: depression--phenotype-thaden---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule42
      potentialCases:
        id: potentialCases
        source: depression--phenotype-amitript---primary/output
  depression--phenotype-prozac---primary:
    run: depression--phenotype-prozac---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule43
      potentialCases:
        id: potentialCases
        source: depression--phenotype-thaden---primary/output
  depression--phenotype-mianserin---primary:
    run: depression--phenotype-mianserin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule44
      potentialCases:
        id: potentialCases
        source: depression--phenotype-prozac---primary/output
  depression--phenotype-fluanxol---primary:
    run: depression--phenotype-fluanxol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule45
      potentialCases:
        id: potentialCases
        source: depression--phenotype-mianserin---primary/output
  depression--phenotype-maleate---primary:
    run: depression--phenotype-maleate---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule46
      potentialCases:
        id: potentialCases
        source: depression--phenotype-fluanxol---primary/output
  depression--phenotype-trazodone---primary:
    run: depression--phenotype-trazodone---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule47
      potentialCases:
        id: potentialCases
        source: depression--phenotype-maleate---primary/output
  depression--phenotype-viloxazine---primary:
    run: depression--phenotype-viloxazine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule48
      potentialCases:
        id: potentialCases
        source: depression--phenotype-trazodone---primary/output
  depression--phenotype-rodomel---primary:
    run: depression--phenotype-rodomel---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule49
      potentialCases:
        id: potentialCases
        source: depression--phenotype-viloxazine---primary/output
  depression--phenotype-norval---primary:
    run: depression--phenotype-norval---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule50
      potentialCases:
        id: potentialCases
        source: depression--phenotype-rodomel---primary/output
  depression--phenotype-prothiaden---primary:
    run: depression--phenotype-prothiaden---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule51
      potentialCases:
        id: potentialCases
        source: depression--phenotype-norval---primary/output
  depression--phenotype-flupentixol---primary:
    run: depression--phenotype-flupentixol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule52
      potentialCases:
        id: potentialCases
        source: depression--phenotype-prothiaden---primary/output
  depression--phenotype-capsule---primary:
    run: depression--phenotype-capsule---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule53
      potentialCases:
        id: potentialCases
        source: depression--phenotype-flupentixol---primary/output
  depression--phenotype-allegron---primary:
    run: depression--phenotype-allegron---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule54
      potentialCases:
        id: potentialCases
        source: depression--phenotype-capsule---primary/output
  depression--phenotype-amoxapine---primary:
    run: depression--phenotype-amoxapine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule55
      potentialCases:
        id: potentialCases
        source: depression--phenotype-allegron---primary/output
  depression--phenotype-concordin---primary:
    run: depression--phenotype-concordin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule56
      potentialCases:
        id: potentialCases
        source: depression--phenotype-amoxapine---primary/output
  marsilid-depression--phenotype---primary:
    run: marsilid-depression--phenotype---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule57
      potentialCases:
        id: potentialCases
        source: depression--phenotype-concordin---primary/output
  depression--phenotype-optimax---primary:
    run: depression--phenotype-optimax---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule58
      potentialCases:
        id: potentialCases
        source: marsilid-depression--phenotype---primary/output
  depression--phenotype-seroxat---primary:
    run: depression--phenotype-seroxat---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule59
      potentialCases:
        id: potentialCases
        source: depression--phenotype-optimax---primary/output
  depression--phenotype-molipaxin---primary:
    run: depression--phenotype-molipaxin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule60
      potentialCases:
        id: potentialCases
        source: depression--phenotype-seroxat---primary/output
  depression--phenotype-clomipramine---primary:
    run: depression--phenotype-clomipramine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule61
      potentialCases:
        id: potentialCases
        source: depression--phenotype-molipaxin---primary/output
  depression--phenotype-sinequan---primary:
    run: depression--phenotype-sinequan---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule62
      potentialCases:
        id: potentialCases
        source: depression--phenotype-clomipramine---primary/output
  depression--phenotype-aventyl---primary:
    run: depression--phenotype-aventyl---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule63
      potentialCases:
        id: potentialCases
        source: depression--phenotype-sinequan---primary/output
  depression--phenotype-syrup---primary:
    run: depression--phenotype-syrup---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule64
      potentialCases:
        id: potentialCases
        source: depression--phenotype-aventyl---primary/output
  depression--phenotype-100mg---primary:
    run: depression--phenotype-100mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule65
      potentialCases:
        id: potentialCases
        source: depression--phenotype-syrup---primary/output
  depression--phenotype-elavil---primary:
    run: depression--phenotype-elavil---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule66
      potentialCases:
        id: potentialCases
        source: depression--phenotype-100mg---primary/output
  depression--phenotype-compound---primary:
    run: depression--phenotype-compound---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule67
      potentialCases:
        id: potentialCases
        source: depression--phenotype-elavil---primary/output
  depression--phenotype-iprindole---primary:
    run: depression--phenotype-iprindole---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule68
      potentialCases:
        id: potentialCases
        source: depression--phenotype-compound---primary/output
  depression--phenotype-maprotiline---primary:
    run: depression--phenotype-maprotiline---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule69
      potentialCases:
        id: potentialCases
        source: depression--phenotype-iprindole---primary/output
  depression--phenotype-venlafaxine---primary:
    run: depression--phenotype-venlafaxine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule70
      potentialCases:
        id: potentialCases
        source: depression--phenotype-maprotiline---primary/output
  isocarboxazid-depression--phenotype---primary:
    run: isocarboxazid-depression--phenotype---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule71
      potentialCases:
        id: potentialCases
        source: depression--phenotype-venlafaxine---primary/output
  depression--phenotype-powder---primary:
    run: depression--phenotype-powder---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule72
      potentialCases:
        id: potentialCases
        source: isocarboxazid-depression--phenotype---primary/output
  iproniazid-depression--phenotype---primary:
    run: iproniazid-depression--phenotype---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule73
      potentialCases:
        id: potentialCases
        source: depression--phenotype-powder---primary/output
  depression--phenotype-dothapax---primary:
    run: depression--phenotype-dothapax---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule74
      potentialCases:
        id: potentialCases
        source: iproniazid-depression--phenotype---primary/output
  depression--phenotype-asendi---primary:
    run: depression--phenotype-asendi---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule75
      potentialCases:
        id: potentialCases
        source: depression--phenotype-dothapax---primary/output
  depression--phenotype-evadyne---primary:
    run: depression--phenotype-evadyne---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule76
      potentialCases:
        id: potentialCases
        source: depression--phenotype-asendi---primary/output
  depression--phenotype-protriptyline---primary:
    run: depression--phenotype-protriptyline---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule77
      potentialCases:
        id: potentialCases
        source: depression--phenotype-evadyne---primary/output
  depression--phenotype-prondol---primary:
    run: depression--phenotype-prondol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule78
      potentialCases:
        id: potentialCases
        source: depression--phenotype-protriptyline---primary/output
  depression--phenotype-praminil---primary:
    run: depression--phenotype-praminil---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule79
      potentialCases:
        id: potentialCases
        source: depression--phenotype-prondol---primary/output
  depression--phenotype-x28cp---primary:
    run: depression--phenotype-x28cp---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule80
      potentialCases:
        id: potentialCases
        source: depression--phenotype-praminil---primary/output
  depression--phenotype-citalopram---primary:
    run: depression--phenotype-citalopram---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule81
      potentialCases:
        id: potentialCases
        source: depression--phenotype-x28cp---primary/output
  depression--phenotype-prepadine---primary:
    run: depression--phenotype-prepadine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule82
      potentialCases:
        id: potentialCases
        source: depression--phenotype-citalopram---primary/output
  dispersible-depression--phenotype---primary:
    run: dispersible-depression--phenotype---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule83
      potentialCases:
        id: potentialCases
        source: depression--phenotype-prepadine---primary/output
  depression--phenotype-gamanil---primary:
    run: depression--phenotype-gamanil---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule84
      potentialCases:
        id: potentialCases
        source: dispersible-depression--phenotype---primary/output
  depression--phenotype-500microgram---primary:
    run: depression--phenotype-500microgram---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule85
      potentialCases:
        id: potentialCases
        source: depression--phenotype-gamanil---primary/output
  domical-depression--phenotype---primary:
    run: domical-depression--phenotype---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule86
      potentialCases:
        id: potentialCases
        source: depression--phenotype-500microgram---primary/output
  depression--phenotype-surmontil---primary:
    run: depression--phenotype-surmontil---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule87
      potentialCases:
        id: potentialCases
        source: domical-depression--phenotype---primary/output
  depression--phenotype-moclobemide---primary:
    run: depression--phenotype-moclobemide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule88
      potentialCases:
        id: potentialCases
        source: depression--phenotype-surmontil---primary/output
  depression--phenotype-tofranil---primary:
    run: depression--phenotype-tofranil---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule89
      potentialCases:
        id: potentialCases
        source: depression--phenotype-moclobemide---primary/output
  depression--phenotype-phenelzine---primary:
    run: depression--phenotype-phenelzine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule90
      potentialCases:
        id: potentialCases
        source: depression--phenotype-tofranil---primary/output
  depression--phenotype-ludiomil---primary:
    run: depression--phenotype-ludiomil---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule91
      potentialCases:
        id: potentialCases
        source: depression--phenotype-phenelzine---primary/output
  depression--phenotype-tranylcypromine---primary:
    run: depression--phenotype-tranylcypromine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule92
      potentialCases:
        id: potentialCases
        source: depression--phenotype-ludiomil---primary/output
  depression--phenotype-escitalopram---primary:
    run: depression--phenotype-escitalopram---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule93
      potentialCases:
        id: potentialCases
        source: depression--phenotype-tranylcypromine---primary/output
  depression--phenotype-efexor---primary:
    run: depression--phenotype-efexor---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule94
      potentialCases:
        id: potentialCases
        source: depression--phenotype-escitalopram---primary/output
  depression--phenotype-x56cp---primary:
    run: depression--phenotype-x56cp---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule95
      potentialCases:
        id: potentialCases
        source: depression--phenotype-efexor---primary/output
  depression--phenotype-manerix---primary:
    run: depression--phenotype-manerix---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule96
      potentialCases:
        id: potentialCases
        source: depression--phenotype-x56cp---primary/output
  depression--phenotype-antidepressant---primary:
    run: depression--phenotype-antidepressant---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule97
      potentialCases:
        id: potentialCases
        source: depression--phenotype-manerix---primary/output
  depression--phenotype-faverin---primary:
    run: depression--phenotype-faverin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule98
      potentialCases:
        id: potentialCases
        source: depression--phenotype-antidepressant---primary/output
  depression--phenotype-tryptizol---primary:
    run: depression--phenotype-tryptizol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule99
      potentialCases:
        id: potentialCases
        source: depression--phenotype-faverin---primary/output
  depression--phenotype-tranquax---primary:
    run: depression--phenotype-tranquax---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule100
      potentialCases:
        id: potentialCases
        source: depression--phenotype-tryptizol---primary/output
  depression--phenotype-lomont---primary:
    run: depression--phenotype-lomont---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule101
      potentialCases:
        id: potentialCases
        source: depression--phenotype-tranquax---primary/output
  depression--phenotype-desipramine---primary:
    run: depression--phenotype-desipramine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule102
      potentialCases:
        id: potentialCases
        source: depression--phenotype-lomont---primary/output
  depression--phenotype-suspension---primary:
    run: depression--phenotype-suspension---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule103
      potentialCases:
        id: potentialCases
        source: depression--phenotype-desipramine---primary/output
  lustral-depression--phenotype---primary:
    run: lustral-depression--phenotype---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule104
      potentialCases:
        id: potentialCases
        source: depression--phenotype-suspension---primary/output
  depression--phenotype-bolvidon---primary:
    run: depression--phenotype-bolvidon---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule105
      potentialCases:
        id: potentialCases
        source: lustral-depression--phenotype---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule106
      potentialCases:
        id: potentialCases
        source: depression--phenotype-bolvidon---primary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
  inputModule32:
    id: inputModule32
    doc: Python implementation unit
    type: File
  inputModule33:
    id: inputModule33
    doc: Python implementation unit
    type: File
  inputModule34:
    id: inputModule34
    doc: Python implementation unit
    type: File
  inputModule35:
    id: inputModule35
    doc: Python implementation unit
    type: File
  inputModule36:
    id: inputModule36
    doc: Python implementation unit
    type: File
  inputModule37:
    id: inputModule37
    doc: Python implementation unit
    type: File
  inputModule38:
    id: inputModule38
    doc: Python implementation unit
    type: File
  inputModule39:
    id: inputModule39
    doc: Python implementation unit
    type: File
  inputModule40:
    id: inputModule40
    doc: Python implementation unit
    type: File
  inputModule41:
    id: inputModule41
    doc: Python implementation unit
    type: File
  inputModule42:
    id: inputModule42
    doc: Python implementation unit
    type: File
  inputModule43:
    id: inputModule43
    doc: Python implementation unit
    type: File
  inputModule44:
    id: inputModule44
    doc: Python implementation unit
    type: File
  inputModule45:
    id: inputModule45
    doc: Python implementation unit
    type: File
  inputModule46:
    id: inputModule46
    doc: Python implementation unit
    type: File
  inputModule47:
    id: inputModule47
    doc: Python implementation unit
    type: File
  inputModule48:
    id: inputModule48
    doc: Python implementation unit
    type: File
  inputModule49:
    id: inputModule49
    doc: Python implementation unit
    type: File
  inputModule50:
    id: inputModule50
    doc: Python implementation unit
    type: File
  inputModule51:
    id: inputModule51
    doc: Python implementation unit
    type: File
  inputModule52:
    id: inputModule52
    doc: Python implementation unit
    type: File
  inputModule53:
    id: inputModule53
    doc: Python implementation unit
    type: File
  inputModule54:
    id: inputModule54
    doc: Python implementation unit
    type: File
  inputModule55:
    id: inputModule55
    doc: Python implementation unit
    type: File
  inputModule56:
    id: inputModule56
    doc: Python implementation unit
    type: File
  inputModule57:
    id: inputModule57
    doc: Python implementation unit
    type: File
  inputModule58:
    id: inputModule58
    doc: Python implementation unit
    type: File
  inputModule59:
    id: inputModule59
    doc: Python implementation unit
    type: File
  inputModule60:
    id: inputModule60
    doc: Python implementation unit
    type: File
  inputModule61:
    id: inputModule61
    doc: Python implementation unit
    type: File
  inputModule62:
    id: inputModule62
    doc: Python implementation unit
    type: File
  inputModule63:
    id: inputModule63
    doc: Python implementation unit
    type: File
  inputModule64:
    id: inputModule64
    doc: Python implementation unit
    type: File
  inputModule65:
    id: inputModule65
    doc: Python implementation unit
    type: File
  inputModule66:
    id: inputModule66
    doc: Python implementation unit
    type: File
  inputModule67:
    id: inputModule67
    doc: Python implementation unit
    type: File
  inputModule68:
    id: inputModule68
    doc: Python implementation unit
    type: File
  inputModule69:
    id: inputModule69
    doc: Python implementation unit
    type: File
  inputModule70:
    id: inputModule70
    doc: Python implementation unit
    type: File
  inputModule71:
    id: inputModule71
    doc: Python implementation unit
    type: File
  inputModule72:
    id: inputModule72
    doc: Python implementation unit
    type: File
  inputModule73:
    id: inputModule73
    doc: Python implementation unit
    type: File
  inputModule74:
    id: inputModule74
    doc: Python implementation unit
    type: File
  inputModule75:
    id: inputModule75
    doc: Python implementation unit
    type: File
  inputModule76:
    id: inputModule76
    doc: Python implementation unit
    type: File
  inputModule77:
    id: inputModule77
    doc: Python implementation unit
    type: File
  inputModule78:
    id: inputModule78
    doc: Python implementation unit
    type: File
  inputModule79:
    id: inputModule79
    doc: Python implementation unit
    type: File
  inputModule80:
    id: inputModule80
    doc: Python implementation unit
    type: File
  inputModule81:
    id: inputModule81
    doc: Python implementation unit
    type: File
  inputModule82:
    id: inputModule82
    doc: Python implementation unit
    type: File
  inputModule83:
    id: inputModule83
    doc: Python implementation unit
    type: File
  inputModule84:
    id: inputModule84
    doc: Python implementation unit
    type: File
  inputModule85:
    id: inputModule85
    doc: Python implementation unit
    type: File
  inputModule86:
    id: inputModule86
    doc: Python implementation unit
    type: File
  inputModule87:
    id: inputModule87
    doc: Python implementation unit
    type: File
  inputModule88:
    id: inputModule88
    doc: Python implementation unit
    type: File
  inputModule89:
    id: inputModule89
    doc: Python implementation unit
    type: File
  inputModule90:
    id: inputModule90
    doc: Python implementation unit
    type: File
  inputModule91:
    id: inputModule91
    doc: Python implementation unit
    type: File
  inputModule92:
    id: inputModule92
    doc: Python implementation unit
    type: File
  inputModule93:
    id: inputModule93
    doc: Python implementation unit
    type: File
  inputModule94:
    id: inputModule94
    doc: Python implementation unit
    type: File
  inputModule95:
    id: inputModule95
    doc: Python implementation unit
    type: File
  inputModule96:
    id: inputModule96
    doc: Python implementation unit
    type: File
  inputModule97:
    id: inputModule97
    doc: Python implementation unit
    type: File
  inputModule98:
    id: inputModule98
    doc: Python implementation unit
    type: File
  inputModule99:
    id: inputModule99
    doc: Python implementation unit
    type: File
  inputModule100:
    id: inputModule100
    doc: Python implementation unit
    type: File
  inputModule101:
    id: inputModule101
    doc: Python implementation unit
    type: File
  inputModule102:
    id: inputModule102
    doc: Python implementation unit
    type: File
  inputModule103:
    id: inputModule103
    doc: Python implementation unit
    type: File
  inputModule104:
    id: inputModule104
    doc: Python implementation unit
    type: File
  inputModule105:
    id: inputModule105
    doc: Python implementation unit
    type: File
  inputModule106:
    id: inputModule106
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
