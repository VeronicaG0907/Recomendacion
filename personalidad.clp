(deftemplate Diagnostico_Personalidad
	(slot paciente
		(type STRING)
		(default ?DERIVE)
	)
	(slot resultado
		(type STRING)
		(default ?DERIVE)
	)
)

(deftemplate test_personalidad
	(slot paciente
		(type STRING)
		(default ?DERIVE)
	)
	(slot p1
		(type NUMBER)
		(default ?DERIVE)
	)
	(slot p2
		(type NUMBER)
		(default ?DERIVE)
	)
	(slot p3
		(type NUMBER)
		(default ?DERIVE)
	)
	(slot p4
		(type NUMBER)
		(default ?DERIVE)
	)
	(slot p5
		(type NUMBER)
		(default ?DERIVE)
	)
	(slot p6
		(type NUMBER)
		(default ?DERIVE)
	)
	(slot p7
		(type NUMBER)
		(default ?DERIVE)
	)
	(slot p8
		(type NUMBER)
		(default ?DERIVE)
	)
	(slot p9
		(type NUMBER)
		(default ?DERIVE)
	)
	(slot p10
		(type NUMBER)
		(default ?DERIVE)
	)
	(slot p11
		(type NUMBER)
		(default ?DERIVE)
	)
	(slot p12
		(type NUMBER)
		(default ?DERIVE)
	)
	(slot p13
		(type NUMBER)
		(default ?DERIVE)
	)
	(slot p14
		(type NUMBER)
		(default ?DERIVE)
	)
	(slot p15
		(type NUMBER)
		(default ?DERIVE)
	)
	(slot p16
		(type NUMBER)
		(default ?DERIVE)
	)
	(slot p17
		(type NUMBER)
		(default ?DERIVE)
	)
	(slot p18
		(type NUMBER)
		(default ?DERIVE)
	)
	(slot p19
		(type NUMBER)
		(default ?DERIVE)
	)
	(slot p20
		(type NUMBER)
		(default ?DERIVE)
	)
	(slot p21
		(type NUMBER)
		(default ?DERIVE)
	)
	(slot p22
		(type NUMBER)
		(default ?DERIVE)
	)
	(slot p23
		(type NUMBER)
		(default ?DERIVE)
	)
	(slot p24
		(type NUMBER)
		(default ?DERIVE)
	)
	(slot p25
		(type NUMBER)
		(default ?DERIVE)
	)
	(slot p26
		(type NUMBER)
		(default ?DERIVE)
	)
	(slot p27
		(type NUMBER)
		(default ?DERIVE)
	)
	(slot p28
		(type NUMBER)
		(default ?DERIVE)
	)
	(slot p29
		(type NUMBER)
		(default ?DERIVE)
	)
	(slot p30
		(type NUMBER)
		(default ?DERIVE)
	)
)

(defrule  calcular
	?t <- (test_personalidad
			(paciente ?no)
			(p1 ?pr1)
			(p2 ?pr2)
			(p3 ?pr3)
			(p4 ?pr4)
			(p5 ?pr5)
			(p6 ?pr6)
			(p7 ?pr7)
			(p8 ?pr8)
			(p9 ?pr9)
			(p10 ?pr10)
			(p11 ?pr11)
			(p12 ?pr12)
			(p13 ?pr13)
			(p14 ?pr14)
			(p15 ?pr15)
			(p16 ?pr16)
			(p17 ?pr17)
			(p18 ?pr18)
			(p19 ?pr19)
			(p20 ?pr20)
			(p21 ?pr21)
			(p22 ?pr22)
			(p23 ?pr23)
			(p24 ?pr24)
			(p25 ?pr25)
			(p26 ?pr26)
			(p27 ?pr27)
			(p28 ?pr28)
			(p29 ?pr29)
			(p30 ?pr30)
	)                 
=>
	(
		bind ?res (+ ?pr1 ?pr2 ?pr3 ?pr4 ?pr5 ?pr6 ?pr7 ?pr8 ?pr9 ?pr10 ?pr11 ?pr12 ?pr13 ?pr14 ?pr15 ?pr16 ?pr17 ?pr18 ?pr19 ?pr20 ?pr21 ?pr22 ?pr23 ?pr24 ?pr25 ?pr26 ?pr27 ?pr28 ?pr29 ?pr30)
	)

(if(> ?res 27)
    then
        (printout t "Puntuación ALTA NORMAL" crlf)
        (assert(Diagnostico_Personalidad(paciente ?no)(resultado "NORMAL. Estas Bien sigue asi")))        
    else (
			if (< ?res 24)
		then 
			(printout t "Puntuación Media! Necesitas atencion." crlf)
			(assert(Diagnostico_Personalidad(paciente ?no)(resultado "SOSPECHA PATOLOGICA. ¡Ten cuidado! Necesitas atencion.")))
			else 
			(if (and(> ?res 9 )(< ?res 12))
				then 
					(printout t "Puntuación BAJA! Necesitas atencion." crlf)
					(assert(Diagnostico_Personalidad(paciente ?no)(resultado "DEMENCIA. necesita atencion para mejorar su salud.")))
            )else
			(if (and(> ?res 12 )(< ?res 24))
				then 
					(printout t "Puntuación BAJA! Necesitas atencion." crlf)
					(assert(Diagnostico_Personalidad(paciente ?no)(resultado "DETERIORIO.  necesita atencion URGENTE.")))
            )
        )
    )
)

;(assert (test_personalidad(paciente "Jairo")(p1 1)(p2 1)(p3 1)(p4 1)(p5 1)(p6 1)(p7 1)(p8 1)(p9 1)(p10 1)(p11 1)(p12 1)(p13 1)(p14 1)(p15 1)(p16 1)(p17 1)(p18 1)(p19 1)(p20 1)(p21 1)(p22 1)(p23 1)(p24 1)(p25 1)(p26 1)(p27 1)(p28 1)(p29 1)(p30 1)))