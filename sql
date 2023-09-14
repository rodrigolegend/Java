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

"select imaprgbl,llave from (select imaprgbl,llave,reg from (\r\nSELECT imaprgbl, cdempres||'-'||cdoperac||'-'||cdmonlim||'-'||mcgrpemp||'-'||tpregtro as llave,ROW_NUMBER() OVER (PARTITION BY cdempres,cdoperac,cdmonlim,mcgrpemp,tpregtro ORDER BY cdempres,cdoperac,cdmonlim,mcgrpemp ) AS reg \r\nFROM tsflimites WHERE tpregtro = 1\r\nunion\r\nSELECT imaprgbl, cdempres||'-'||mcgrpemp||'-'||cdmonlim||'-'||tpregtro as llave,ROW_NUMBER() OVER (PARTITION BY cdempres,mcgrpemp,cdmonlim,tpregtro ORDER BY cdempres,mcgrpemp,cdmonlim,tpregtro ) AS reg \r\nFROM tsflimites WHERE mcgrpemp = 0 AND tpregtro = 1\r\nunion\r\nSELECT l.imaprgbl,nvl(trim(e.cdempres),'')||'-'||nvl(l.cdmonlim,'')||'-'||nvl(l.tpregtro,'')||'-'||nvl(l.mcgrpemp,'') as llave,\r\nROW_NUMBER() OVER (PARTITION BY e.cdempres,l.cdmonlim,l.tpregtro,l.mcgrpemp ORDER BY e.cdempres,l.cdmonlim,l.tpregtro,l.mcgrpemp) as reg\r\nFROM tsfempresa e, tsflimites l WHERE l.cdgrupo = e.cdgrupo AND e.cdgrupo IS NOT NULL AND l.mcgrpemp = 1 AND l.tpregtro = 1\r\n)) where reg=1");
