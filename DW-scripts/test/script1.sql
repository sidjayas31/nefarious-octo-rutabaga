select * from information_schema.processlist;



create table W_RUNS_FD as select a.*,
b.to_name 'STOP3_NAME',b.time_hour 'STOP3_TIME',b.travel_time 'TRAVEL3_TIME',
c.to_name 'STOP4_NAME',c.time_hour 'STOP4_TIME',c.travel_time 'TRAVEL4_TIME',
d.to_name 'STOP5_NAME',d.time_hour 'STOP5_TIME',d.travel_time 'TRAVEL5_TIME',
e.to_name 'STOP6_NAME',e.time_hour 'STOP6_TIME',e.travel_time 'TRAVEL6_TIME',
f.to_name 'STOP7_NAME',f.time_hour 'STOP7_TIME',f.travel_time 'TRAVEL7_TIME',
g.to_name 'STOP8_NAME',g.time_hour 'STOP8_TIME',g.travel_time 'TRAVEL8_TIME',
h.to_name 'STOP9_NAME',h.time_hour 'STOP9_TIME',h.travel_time 'TRAVEL9_TIME',
i.to_name 'STOP10_NAME',i.time_hour 'STOP10_TIME',i.travel_time 'TRAVEL10_TIME',
j.to_name 'STOP11_NAME',j.time_hour 'STOP11_TIME',j.travel_time 'TRAVEL11_TIME',
k.to_name 'STOP12_NAME',k.time_hour 'STOP12_TIME',k.travel_time 'TRAVEL12_TIME',
l.to_name 'STOP13_NAME',l.time_hour 'STOP13_TIME',l.travel_time 'TRAVEL13_TIME',
m.to_name 'STOP14_NAME',m.time_hour 'STOP14_TIME',m.travel_time 'TRAVEL14_TIME',
n.to_name 'STOP15_NAME',n.time_hour 'STOP15_TIME',n.travel_time 'TRAVEL15_TIME',
o.to_name 'STOP16_NAME',o.time_hour 'STOP16_TIME',o.travel_time 'TRAVEL16_TIME',
p.to_name 'STOP17_NAME',p.time_hour 'STOP17_TIME',p.travel_time 'TRAVEL17_TIME',
q.to_name 'STOP18_NAME',q.time_hour 'STOP18_TIME',q.travel_time 'TRAVEL18_TIME',
r.to_name 'STOP19_NAME',r.time_hour 'STOP19_TIME',r.travel_time 'TRAVEL19_TIME',
s.to_name 'STOP20_NAME',s.time_hour 'STOP20_TIME',s.travel_time 'TRAVEL20_TIME',
t.to_name 'STOP21_NAME',t.time_hour 'STOP21_TIME',t.travel_time 'TRAVEL21_TIME'
from
(select id,integration_key,route,`Date` 'time_date',tripid 'trip_id',`from` 'STOP1_NAME',`to` 'STOP2_NAME',time(when_time)'STOP2_TIME',sec_time 'TRAVEL2_TIME' from S_SPRING_RUNS_WITH_STOP where travel_flag=1 and stop_order=1)a left join
(select id,`to` to_name ,time(when_time) 'time_hour' ,sec_time 'travel_time'  from S_SPRING_RUNS_WITH_STOP where travel_flag=0 and stop_order=1)z on a.id=z.id left join
(select id,`to` to_name ,time(when_time) 'time_hour' ,sec_time 'travel_time'  from S_SPRING_RUNS_WITH_STOP where travel_flag=1 and stop_order=2)b on a.id=b.id left join
(select id,`to` to_name ,time(when_time) 'time_hour' ,sec_time 'travel_time'  from S_SPRING_RUNS_WITH_STOP where travel_flag=1 and stop_order=3)c on a.id=c.id left join
(select id,`to` to_name ,time(when_time) 'time_hour' ,sec_time 'travel_time'  from S_SPRING_RUNS_WITH_STOP where travel_flag=1 and stop_order=4)d on a.id=d.id left join
(select id,`to` to_name ,time(when_time) 'time_hour' ,sec_time 'travel_time'  from S_SPRING_RUNS_WITH_STOP where travel_flag=1 and stop_order=5)e on a.id=e.id left join
(select id,`to` to_name ,time(when_time) 'time_hour' ,sec_time 'travel_time'  from S_SPRING_RUNS_WITH_STOP where travel_flag=1 and stop_order=6)f on a.id=f.id left join
(select id,`to` to_name ,time(when_time) 'time_hour' ,sec_time 'travel_time'  from S_SPRING_RUNS_WITH_STOP where travel_flag=1 and stop_order=7)g on a.id=g.id left join
(select id,`to` to_name ,time(when_time) 'time_hour' ,sec_time 'travel_time'  from S_SPRING_RUNS_WITH_STOP where travel_flag=1 and stop_order=8)h on a.id=h.id left join
(select id,`to` to_name ,time(when_time) 'time_hour' ,sec_time 'travel_time'  from S_SPRING_RUNS_WITH_STOP where travel_flag=1 and stop_order=9)i on a.id=i.id left join
(select id,`to` to_name ,time(when_time) 'time_hour' ,sec_time 'travel_time'  from S_SPRING_RUNS_WITH_STOP where travel_flag=1 and stop_order=10)j on a.id=j.id left join
(select id,`to` to_name ,time(when_time) 'time_hour' ,sec_time 'travel_time'  from S_SPRING_RUNS_WITH_STOP where travel_flag=1 and stop_order=11)k on a.id=k.id left join
(select id,`to` to_name ,time(when_time) 'time_hour' ,sec_time 'travel_time'  from S_SPRING_RUNS_WITH_STOP where travel_flag=1 and stop_order=12)l on a.id=l.id left join
(select id,`to` to_name ,time(when_time) 'time_hour' ,sec_time 'travel_time'  from S_SPRING_RUNS_WITH_STOP where travel_flag=1 and stop_order=13)m on a.id=m.id left join
(select id,`to` to_name ,time(when_time) 'time_hour' ,sec_time 'travel_time'  from S_SPRING_RUNS_WITH_STOP where travel_flag=1 and stop_order=14)n on a.id=n.id left join
(select id,`to` to_name ,time(when_time) 'time_hour' ,sec_time 'travel_time'  from S_SPRING_RUNS_WITH_STOP where travel_flag=1 and stop_order=15)o on a.id=o.id left join
(select id,`to` to_name ,time(when_time) 'time_hour' ,sec_time 'travel_time'  from S_SPRING_RUNS_WITH_STOP where travel_flag=1 and stop_order=16)p on a.id=p.id left join
(select id,`to` to_name ,time(when_time) 'time_hour' ,sec_time 'travel_time'  from S_SPRING_RUNS_WITH_STOP where travel_flag=1 and stop_order=17)q on a.id=q.id left join
(select id,`to` to_name ,time(when_time) 'time_hour' ,sec_time 'travel_time'  from S_SPRING_RUNS_WITH_STOP where travel_flag=1 and stop_order=18)r on a.id=r.id left join
(select id,`to` to_name ,time(when_time) 'time_hour' ,sec_time 'travel_time'  from S_SPRING_RUNS_WITH_STOP where travel_flag=1 and stop_order=19)s on a.id=s.id left join
(select id,`to` to_name ,time(when_time) 'time_hour' ,sec_time 'travel_time'  from S_SPRING_RUNS_WITH_STOP where travel_flag=1 and stop_order=20)t on a.id=t.id;