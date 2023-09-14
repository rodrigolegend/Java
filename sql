SELECT trsftp.cdrefere , trsftp.tpintere ,DECODE(trsftp.tpintere,'V',trsftp.nudifere,trsftp.pctpgral) AS pctpgral, trsftp.cdempres||'-'||trsftp.cdoperac||'-'||trsftp.tpregtro as llave


SELECT 
    trsftp.cdrefere, 
    trsftp.tpintere,
    CASE 
        WHEN trsftp.tpintere = 'V' THEN trsftp.nudifere
        ELSE trsftp.pctpgral
    END AS pctpgral,
    trsftp.cdempres || '-' || trsftp.cdoperac || '-' || trsftp.tpregtro AS llave
FROM
    trsftpincob trsftp;

SELECT tabname
FROM systables
WHERE tabtype = 'T'
ORDER BY tabname ASC;

select * from trsftpincob

;

"SELECT FIRST 1 NVL(tsflibor.pcreuter,0) AS pcreuter FROM tsflibor WHERE tsflibor.cdrefere = (SELECT cdrefere FROM tsftipos t WHERE t.cdinicia IN (SELECT cdinicia FROM tsftipos t2 WHERE  t2.cdrefere IN (71,72,73,76,82)) AND ? BETWEEN t.nudiamin AND t.nudiamax) AND tsflibor.cdmoneda = ? ORDER BY tsflibor.fhregtro DESC, tsflibor.nuordnfh DESC");
