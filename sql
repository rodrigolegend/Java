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
