A
800
FOREST

TEXTURE autogen_trees_ALB.png	

LOD 20000.000000

SCALE_X 1024
SCALE_Y 512



SPACING 20.0 18.0
RANDOM 20.0 22.0

# layer 0 = tall wide trees
# layer 1 = tall narrow trees
# layer 2 = small trees
# layer 3 = shrubs
# layer 10 + = specific species
# layer 12 = hedge test
	
#tree	s	t	w	y	offset	%	h min	h max	quads	type	name	(Y_QUAD:)	s	t	w_s	w_t	ofst_s	ofst_t	w	y	psi
#-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

TREE	85	300	78	116	38	3.3	10	15	2	0	broadleaf1
Y_QUAD	77	416	95	95	46	47	72	55	97   

TREE	85	310	78	106	38	3.3	12	18	2	0	broadleaf1_tall
Y_QUAD														77	416	95	95	46	47	72	45	97 

TREE	1	300	82	115	40.7	3.3	11	16	2	0	broadleaf2
Y_QUAD														1	437	74	74	37	37	82	53	41

TREE	1	310	82	105	40.7	3.3	11	17	2	0	broadleaf2_tall
Y_QUAD														1	437	74	74	37	37	82	43	41

TREE	325	305	72	110	37	3.3	8	13	2	2	ornamental1
Y_QUAD														174	442	69	69	34.5	34.5	65	46	0

#TREE	0	0	70	199	34	3.3	12	15	2	1	palm1											
#Y_QUAD														0	200	62	62	32	29	62	155	12

#TREE	70	0	67	182	34	3.3	10	12	2	1	palm2
#Y_QUAD														318	198	62	62	32	29	62	142	0								

TREE	137	0	55	141	27	3.3	5	8	2	1	snail_tree
#Y_QUAD														139	143	48	48	24	24	48	81	15
	
TREE	193	0	62	127	32	3.3	3	9	2	1	conifer1	
#Y_QUAD														254	119	68	68	34	34	55	16	-30		
	
TREE	256	0	65	114	31	3.3	2	6	2	2	fig
#Y_QUAD														255	117	71	71	35	35	56	73	-30	

TREE	323	0	24	167	12	3.3	2	8	2	11	cypress
#Y_QUAD														349	129	35	35	17.5	18	20.5	24	0

#TREE	352	0	72	128	34	3.3	16	20	2	1	tall_tropical1
#Y_QUAD														172	441	72	70	35	36	37	99	0

#TREE	425	0	66	128	41	3.3	12	18	2	1	tall_tropical2


TREE	163	289	72	128	36	3.3	10	20	2	0	tall_conifer

TREE	163	289	72	128	36	3.3	10	22	2	12	tall_conifer
#Y_QUAD														

#TREE	236	289	87	101	42	3.3	5	10	2	1	acacia?			
#Y_QUAD														243	391	66	66	33	33	81	69	0

TREE	397	273	114	126	63	3.3	7	15	2	2	round_tree
Y_QUAD														399	399	112	112	56	56	112	65	11	

TREE	385	129	127	118	64	3.3	15	18	2	0	plane
Y_QUAD														312	423	86	86	43	43	82	50	62

TREE	64	192	38	96	20	3.3	1.5	3	2	11	small_cypress	
#Y_QUAD														192	129	62	62	31	31	32	35	0
#Y_QUAD														196	225	36	36	16	16	32	31	0

TREE	106	246	57	39	29	3.3	0.75	2	2	3	shrub_mid_green1
#Y_QUAD														258	123	62	62	47	47	47	20	21

TREE	327	168	56	31	28	3.3	2	4	2	10	ground_palm
Y_QUAD														317	199	64	64	32	32	64	4	-15

TREE	164	263	45	24	23	3.3	0.75	2	2	3	shrub_dark_green1
#Y_QUAD														196	225	36	36	18	18	48	12	0
TREE	210	263	48	24	24	3.3	0.75	2	2	3	shrub_light_green1													
#Y_QUAD														

TREE	259	263	49	24	24	3.3	0.75	1.5	2	3	shrub_grey																	
#Y_QUAD														

TREE	309	263	46	23	23	3.3	0.75	1.5	2	3	shrub_light_olive													
#Y_QUAD														

TREE	357	263	27	19	14	3.3	0.75	1.25	2	3	shrub_light_green2													
#Y_QUAD														

TREE	103	192	57	51	28	3.3	1	2.0	2	3	shrub_dark_green2														
#Y_QUAD														196	225	36	36	18	18	44	22	0				

TREE	160	192	36	34	18	3.3	0.7	1.5	2	3	shrub_light_green3														
#Y_QUAD														163	227	30	31	15	15.5	30	15	180

TREE	198	192	32	34	16	3.3	0.6	2.0	2	3	shrub_dark_green3													
#Y_QUAD														196	226	35	35	17.5	17.5	35	11	0

TREE	231	192	43	36	21	3.3	0.8	2.0	2	3	shrub_mid_green2													
#Y_QUAD														235	228	34	33	15.5	16.5	39	13	0			

TREE	275	192	36	31	18	3.4	0.6	2.0	2	3	shrub_mid_green3												
#Y_QUAD														275	225	34	34	18	18	34	16	0



# A Y_QUAD command adds a horizontal quad to the tree defined in the previous line.

# The new parameters are:
# s,t:			Coordinates of the bottom left corner of the horizontal quad's image in the texture file.
# w_s, w_t: 		Width (in pixels) of the quad's _texture_ in the s and t directions repectively
# ofst_s, ofst_t: 	Pixel offsets, along the s and t axes respectively, from the bottom left corner of the quad to the centre of the tree.
# w:			Width along the s-axis, in pixels relative to the scale of the vertical quads. This allows the Y_QUAD to be scaled relative to the vertical quads. 
# y:			Height above the ground (in pixels relative to the scale of the previous tree) at which to draw the horizontal quad.
# psi:			Rotation around the y-axis relative to the principal vertical quad.	

# If there is a significant expense incurred by providing a 'psi' parameter, then we could expect the rotation to be 'pre-baked' into the texture by the author. But otherwise, it WOULD be handy to keep it - I find that horizontal quads usually need some fine tuning in order to 'sit' right.

SKIP_SURFACE water		