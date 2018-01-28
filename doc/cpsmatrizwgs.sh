#!/bin/bash
cat << EOF | grep ^Point | awk -F\\t '{ print $7".jpg",$3,$2,$10 }'
wkt_geom	wkt_geom	ID	X	Y	Z	ROLL	PITCH	YAW
Point	-38.29415469621165613	-7.99337684191400921	Point	577786.73800000001210719	9116367.71800000034272671	85658	577786.738	9116367.718	1498.49	-1.793	-0.334	335.533
Point	-38.2959678834616426	-7.99404574731370499	Point	577586.78200000000651926	9116294.10600000061094761	85659	577586.782	9116294.106	1506.058	-4.134	0.074	335.63
Point	-38.29775912940622362	-7.99472970389016702	Point	577389.24199999996926636	9116218.82499999925494194	85660	577389.242	9116218.825	1514.685	-6.188	0.01	335.577
Point	-38.29954926253419956	-7.99544217891972142	Point	577191.81999999994877726	9116140.39000000059604645	85661	577191.82	9116140.39	1519.404	-4.363	0.112	336.06
Point	-38.30134342279849591	-7.99618090181852637	Point	576993.94999999995343387	9116059.05299999937415123	85662	576993.95	9116059.053	1517.274	-3.098	0.623	336.314
Point	-38.29631656802897766	-7.98814395747439931	Point	577549.46799999999348074	9116946.67100000008940697	85792	577549.468	9116946.671	1513.095	-2.533	1.851	333.282
Point	-38.29815877044548245	-7.98892042692799098	Point	577346.29200000001583248	9116861.17100000008940697	85793	577346.292	9116861.171	1510.531	-0.004	1.192	332.992
Point	-38.30001799578901966	-7.98969016100925433	Point	577141.24199999996926636	9116776.41799999959766865	85794	577141.242	9116776.418	1508.329	-2.054	-0.125	332.618
Point	-38.30189873709814208	-7.99046825398068794	Point	576933.81999999994877726	9116690.74400000087916851	85795	576933.82	9116690.744	1510.096	-3.633	0.576	331.656
Point	-38.3037818419256908	-7.99125903295983164	Point	576726.13600000005681068	9116603.66699999943375587	85796	576726.136	9116603.667	1513.61	-2.631	0.241	331.893
EOF
exit 0