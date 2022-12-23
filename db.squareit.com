;
; BIND data file for local loopback interface
;
$TTL    604800
@       IN      SOA     square-it-srv. square-it.com. (
                              2         ; Serial
                         604800         ; Refresh
                          86400         ; Retry
                        2419200         ; Expire
                         604800 )       ; Negative Cache TTL
;
@       IN      NS      square-it-srv.
@       IN      A       10.1.1.1
@       IN      AAAA    ::1

;records for servers
users IN A 10.3.3.128
guests IN A 10.3.3.64
IoT IN A 10.3.3.0
