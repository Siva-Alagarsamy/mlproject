??
?'?'
D
AddV2
x"T
y"T
z"T"
Ttype:
2	??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
K
Bincount
arr
size
weights"T	
bins"T"
Ttype:
2	
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
?
Cumsum
x"T
axis"Tidx
out"T"
	exclusivebool( "
reversebool( " 
Ttype:
2	"
Tidxtype0:
2	
R
Equal
x"T
y"T
z
"	
Ttype"$
incompatible_shape_errorbool(?
=
Greater
x"T
y"T
z
"
Ttype:
2	
?
HashTableV2
table_handle"
	containerstring "
shared_namestring "!
use_node_name_sharingbool( "
	key_dtypetype"
value_dtypetype?
.
Identity

input"T
output"T"	
Ttype
l
LookupTableExportV2
table_handle
keys"Tkeys
values"Tvalues"
Tkeystype"
Tvaluestype?
w
LookupTableFindV2
table_handle
keys"Tin
default_value"Tout
values"Tout"
Tintype"
Touttype?
b
LookupTableImportV2
table_handle
keys"Tin
values"Tout"
Tintype"
Touttype?
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
?
Max

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
>
Maximum
x"T
y"T
z"T"
Ttype:
2	
?
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
>
Minimum
x"T
y"T
z"T"
Ttype:
2	
?
Mul
x"T
y"T
z"T"
Ttype:
2	?
?
MutableHashTableV2
table_handle"
	containerstring "
shared_namestring "!
use_node_name_sharingbool( "
	key_dtypetype"
value_dtypetype?

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
?
PartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
?
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
?
RaggedTensorToTensor
shape"Tshape
values"T
default_value"T:
row_partition_tensors"Tindex*num_row_partition_tensors
result"T"	
Ttype"
Tindextype:
2	"
Tshapetype:
2	"$
num_row_partition_tensorsint(0"#
row_partition_typeslist(string)
@
ReadVariableOp
resource
value"dtype"
dtypetype?
E
Relu
features"T
activations"T"
Ttype:
2	
?
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	?
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
?
Select
	condition

t"T
e"T
output"T"	
Ttype
A
SelectV2
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
?
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ?
@
StaticRegexFullMatch	
input

output
"
patternstring
m
StaticRegexReplace	
input

output"
patternstring"
rewritestring"
replace_globalbool(
?
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
<
StringLower	
input

output"
encodingstring 
e
StringSplitV2	
input
sep
indices	

values	
shape	"
maxsplitint?????????
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.6.02v2.6.0-rc2-32-g919f693420e8??
?
embedding/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?N *%
shared_nameembedding/embeddings
~
(embedding/embeddings/Read/ReadVariableOpReadVariableOpembedding/embeddings*
_output_shapes
:	?N *
dtype0
t
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  *
shared_namedense/kernel
m
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
_output_shapes

:  *
dtype0
l

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
dense/bias
e
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes
: *
dtype0
x
dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *
shared_namedense_1/kernel
q
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*
_output_shapes

: *
dtype0
p
dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_1/bias
i
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes
:*
dtype0
k

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name185*
value_dtype0	
}
MutableHashTableMutableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name
table_91*
value_dtype0	
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
b
total_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_2
[
total_2/Read/ReadVariableOpReadVariableOptotal_2*
_output_shapes
: *
dtype0
b
count_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_2
[
count_2/Read/ReadVariableOpReadVariableOpcount_2*
_output_shapes
: *
dtype0
b
total_3VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_3
[
total_3/Read/ReadVariableOpReadVariableOptotal_3*
_output_shapes
: *
dtype0
b
count_3VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_3
[
count_3/Read/ReadVariableOpReadVariableOpcount_3*
_output_shapes
: *
dtype0
?
Adam/embedding/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?N *,
shared_nameAdam/embedding/embeddings/m
?
/Adam/embedding/embeddings/m/Read/ReadVariableOpReadVariableOpAdam/embedding/embeddings/m*
_output_shapes
:	?N *
dtype0
?
Adam/dense/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  *$
shared_nameAdam/dense/kernel/m
{
'Adam/dense/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/m*
_output_shapes

:  *
dtype0
z
Adam/dense/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameAdam/dense/bias/m
s
%Adam/dense/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense/bias/m*
_output_shapes
: *
dtype0
?
Adam/dense_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *&
shared_nameAdam/dense_1/kernel/m

)Adam/dense_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/m*
_output_shapes

: *
dtype0
~
Adam/dense_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_1/bias/m
w
'Adam/dense_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/m*
_output_shapes
:*
dtype0
?
Adam/embedding/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?N *,
shared_nameAdam/embedding/embeddings/v
?
/Adam/embedding/embeddings/v/Read/ReadVariableOpReadVariableOpAdam/embedding/embeddings/v*
_output_shapes
:	?N *
dtype0
?
Adam/dense/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  *$
shared_nameAdam/dense/kernel/v
{
'Adam/dense/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/v*
_output_shapes

:  *
dtype0
z
Adam/dense/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameAdam/dense/bias/v
s
%Adam/dense/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense/bias/v*
_output_shapes
: *
dtype0
?
Adam/dense_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *&
shared_nameAdam/dense_1/kernel/v

)Adam/dense_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/v*
_output_shapes

: *
dtype0
~
Adam/dense_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_1/bias/v
w
'Adam/dense_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/v*
_output_shapes
:*
dtype0
G
ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R
H
Const_1Const*
_output_shapes
: *
dtype0*
valueB B 
I
Const_2Const*
_output_shapes
: *
dtype0	*
value	B	 R 
I
Const_3Const*
_output_shapes
: *
dtype0	*
value	B	 R 
Ț
Const_4Const*
_output_shapes	
:?N*
dtype0*??
value??B???NBtheBandBiBaBtoBofBitBthisBisBinBforBthatBwasBnotByouBwithBbutBonBbookBhaveBmyBasBareBoneBbeBallBsoBgreatBifBveryBlikeBgoodBtheyBitsBatBjustBfromBorBwouldBaboutBanBoutBmeBhasBwhatBmoreBhadBwillBreadBwhenBgetBbyBnoBtimeBmovieBupBonlyByourBcanBdontBthereBhisBheBreallyBsomeBdoBthanBwhoBthemBwellBmuchBevenBfirstBotherBweBherBtheseBloveBafterBwereBbecauseBtooBbuyBbestBbeenBhowBproductBwhichBbetterBtheirBcdBanyBuseBsheBamBworkBalbumBalsoBcouldBdidBboughtBstoryBthenBnewBlittleBimBwayBmanyBthinkBdoesBintoBnowBbackBmostBmoneyBmusicBoverBmakeBneverBknowBstillBgotBtwoBbadBseeBshouldBeverBoffBbooksBmadeBwantBpeopleBdidntBfindByearsBiveB	recommendBoldBqualityBusedBgoBcantBreadingBanotherBfoundBthroughBsayBsameBdvdBsongsBagainBdoesntB2BbeforeBputBlifeBeveryBfewBworthBwhileBgameBfilmBthingBthoughtB	somethingBdownBourBeasyBpriceBsoundBlongBlotBthoseBgiveB
charactersBworksBwhyBgoingBbeingBmustB	excellentBneedBsinceBhardBlookingBrightBwasteBhoweverBniceBrealBenoughBnothingBwhereBlastBlookByearBhereBanyoneBtimesBmakesBsetBdisappointedBsuchBownBseriesBtakeB	differentBwithoutBamazonBdayBthoughBwatchBendBfanBfunBsongBbigBauthorBwrittenBusBfarB3BhimB	purchasedBbothBfeelBaroundBprettyBreviewsBsureBcomeBmayBactuallyBalwaysBthingsBversionBinterestingBplayBusingBkeepBawayBbitBproblemB5BeachBanythingBsmallBshowBlovedBpartB	wonderfulBtryBseemsBstarsBworldBcameBoriginalBalmostBreviewBthatsBtriedBquiteBpoorBitemBsaidByetBseenBmonthsBonceBenjoyBperfectBdoneBplotB4BgettingBwritingBworstBnextByoureBwholeB1BboringBhelpBvideoBpurchaseBisntBhighlyBfavoriteBlessBmoviesBwontBinsteadBhavingB
everythingBsecondBbelieveBwantedBhighBmightBheardBbandBseveralBtryingBcouldntBinformationBprobablyBdaysBthreeBliveBfineBbuyingBleastBreceivedBtrueBmaybeBlistenBwrongBothersBworkedBableBuntilBmanBstarBsomeoneBkidsBfullBfitB	characterBjobBfactBshortBwasntB
definitelyBlightBfunnyBwishBboxBhappyBnovelBorderedBagoBtogetherBamazingBenjoyedBtookBalreadyBfamilyBwentBpointBorderB
understandB
especiallyBtopBlooksBcoverBhomeBelseBalthoughB	beautifulBstuffBstartedBletBlikedBcaseBhistoryBgetsBsawBgaveBpieceB
collectionBplaceBcomesBminutesBclassicBidBpagesBbetweenBkindBleftBstyleBstartBreturnBproblemsBcheapBterribleB10BmyselfBhopeBratherBwaterBmakingBtellBreasonBeveryoneBsimplyBworkingBokBunitBhalfBhearBvoiceBpictureBsizeBawesomeBcoupleBlineBhorribleBeitherBsonBsaveBstoriesByoullBrockBsoundsBtvBideaB
completelyBtakesBsideBchildrenBwatchingBgiftB	christmasBwouldntBonesBseemB
absolutelyBexpectedBpersonBfinallyBalongBfansBblackBsimpleBoverallBfriendsBpleaseBillBpowerByoungBgoesBwaitBmindBplasticBplayerBpageBcannotBbatteryBshowsBlovesBcopyBlostBreaderBtrulyBrestBneededBfeltBdaughterB
experienceBcameraBfastBphoneBetcB	difficultBlearnBeasilyBserviceBneedsBplayingBhoursBguessBcompleteBunderBdisappointingBtheresBholdBwordsBtrackBschoolBnightBpastBthinkingBtitleBdoingBactionB	extremelyBhouseBcourseBturnBcompanyBduringBsaysB6BgivenBwriteBrecommendedBitselfBstoreByourselfBchildBweeksBgivesBtoyBpayBmainBalbumsBmaterialBtracksBnameBactingBpartsBcomputerBcareBclearBcoolBlaterBcalledBsupportBtotallyBlowBstayBauthorsBplayedBhaventBmrBsystemBbabyBchangeBweekBlongerBendingBseasonBentireBsenseB	listeningBgodBamericanBunfortunatelyBtoldBoftenBfriendBcoffeeBmonthBspecialBtypeBfreeBheadBdealBpicturesBwithinBexpectBcarBsingleByesBguyBreleaseBquicklyBstopBseemedB12BdiscBkeptBdesignBbrokeBrunB20BhugeBcolorBcloseBbasedBcutBhotBtodayBhandBslowBawfulBlargeBmachineB	availableBlotsBgirlB
interestedBwhiteB	sometimesBdecidedBscenesBcleanBopenBhairBarrivedBmetalBdisappointmentBfinishBlookedBshippingBsentBfourBunlessBeditionBgladBexactlyBsorryBcheckBcdsBproductsBmatterBroomBlyricsBheartB	fantasticBstrongBguysBhesBbrandBusefulBinsideBscreenBdogBpreviousBwarBrememberBearlyBjunkBwordBheavyBhusbandBnumberBcallBreplacementBopinionBcustomerBcostBpoorlyBwomenBreturnedBvalueBmeanBguideBhappenedBaddBentertainingBlevelBgamesBfollowBplusBfiveBforwardBrecordB	beginningB	certainlyBmineBsoftwareBworseBwomanBsoonBhateBpickBageBbecomeBperhapsBdarkBbagB	expensiveB	importantBhitBturnedBjohnBstandBperformanceBtextBmissingBextraBspendBhelpfulBradioB30BsadBtakingBguitarBtheyreBwatchedBclassBagreeBwifeBstupidBusuallyBdecentBexceptBohBquickBpopBcomingBdescriptionBsupposedBpaperBgreatestBmodelBknewBfilmsB	recordingBpaidBspentBfoodB	batteriesBstoppedBboyBcardBpiecesBexampleBbasicBfeaturesBcableBviewBdeadBthankBchapterBissuesBartBleaveBdueBfaceBenglishBsceneBpersonalBstickBmoveBolderBgroupBgarbageBideasBuselessBbottomBbusinessBsubjectBwantsB15BannoyingBlanguageBcuteBtapeBsellerBagainstBbrokenB8BgoneBcountryBinterestBfallBarentBhopingBvolumeBgivingBtotalBtoolBfeelingBkeepsBincludedBwriterBwaitingBseeingBpleasedBtasteBreleasedB	otherwiseBmajorB	enjoyableBfutureBtakenBreplaceBairBthanksBusesBcontrolBprintBdriveBbehindBhumorBseriousBthirdBonlineBweakBfictionBdeathBrecentlyBtwiceBspaceBreadersBwonderBcomfortableBsolidBlivesBdvdsBsendB	attentionBknownB100BmenBsayingBlibraryBbreakBhandleBlocalBprogramBissueBsimilarBlistBapartB	surprisedBloudBokayBinstructionsBadviceB	reviewersBhourBfinishedBnoneB7BeffortB	includingBsuggestBaloneBmiddleBhandsBaudioBrunningBcastBbodyBendedBfrontBweightBbandsBhumanBanywayB
throughoutBavoidBredB
productionBwroteBfigureBlackBcrapBmotherBbeyondBresearchBactualBpackageB	perfectlyBhappenBblueBhimselfBamountBdeBbotherB	expectingBwowB	conditionBsuperBchanceBclearlyBgirlsBexcitedBdeepBlivingBcontentBactorsBwearBmodernBmusicalBlearningBdeviceB	referenceBbewareBtalentBparentsBadditionBeyesBalotBkindleBmeansB	impressedBsingingBwhatsBfellBsortBmysteryBknowsBchangedBacrossBmostlyBmissBhorrorBdetailBsexBeffectsBchargeBmovingB	obviouslyBnearlyBpossibleB50BchoiceBbringBshesBareaB	basicallyB	questionsBuniqueBratingBmsBsomewhatB
themselvesBbibleBromanceByouveBrateBbeatBmixBtalkBmessageBtrashBnoiseBtalkingBdryBdigitalB
historicalBkidBtroubleB
incredibleBdateBplaysBnovelsBlateBregularBsettingBgeneralBtruthBdetailsBstuckBdanceBshameBpickedBstandardBforgetBlearnedBcomedyBstraightB
purchasingBpowerfulBseatBhitsBcomparedBplanBlikesBuponBpresentBformB
differenceBletsBflatBsoftBpainBcauseBfeatureBcoversBfeelsBimmediatelyBlistenedBputtingB
impossibleBchaptersBthinB
backgroundBperiodB	brilliantB
soundtrackBfitsBscienceBcontainsBkingBstartsBrefundBsweetBdoubtBturnsBrecipesBtouchBlaughBtestBboysBworkoutBvocalsBoutsideBsellBrangeBexamplesB	seriouslyBbecameBinstallBconsiderBaverageBitemsBwhetherBsoulBfeetBdiedBstepB	christianB
particularBwindowsB
advertisedBlaBtellsBunderstandingBmentionBstudentsBdullBnegativeBwaysBlinesBpassBfilterBpositiveBnearBsingBfilledBwastedBphotosBaboveBsmellBattemptBfailedBleadBtripBplainBprinterBvariousBreviewerBrealizeBprovidesBsitBstudyBhelpedBwarrantyBepisodesBskinBmarketBsleepBnoteBhellBleavesBsonyBgraphicsBuBprocessBopenedBcorrectBbroughtBbarelyBresultsBpointsBskipBeasierBcatBmistakeBexcitingBfairlyBdespiteBaccurateBanymoreBpairBtableBaskBimagineBpureBtaleBsucksBversionsBartistBdepthBbuttonB
headphonesB	describedBsectionBhelpsBselfBmanualBgreenBcertainBplacesBbaseBownedBnorBmemoryBcityBhappensBbottleBearlierBcoldBcupBnoticedBsturdyBcollegeBfatherBepisodeBreplacedBcontinueBwebsiteBjazzBsiteB
appreciateBreadyBdrBconceptBfantasyBlastedBparticularlyB	knowledgeBsoldBwebBinfoBaddedBbedB	returningBcrazyBsummerBcommonBamericaBstartingBmouseBfreshBswitchBnormalBdoorBdevelopmentBsmallerBhearingBoutstandingB	mentionedBfireBdialogueBwhateverBartistsBdogsBtightBfactsB	defectiveBthrowBappearsBprovideBsetsBipodBadmitBminuteBtravelB	packagingBslightlyBinternetBdesignedBjamesBwallBobviousBfinalBproperlyBbunchBluckBtiredBconsideringBsixBincludeBusualBformatBtenBcheaperBopeningBforeverBquestionBrichBgenreBeventsBplentyBpullB
ridiculousB9BsingerBearBgottenBinsightBendsBwarmBbassBstateBmessBpredictableBtypicalBedgeBpackBzeroBconcertBfixBevilB80sBlargerBprofessionalBshotBmagicBplayersBinformativeBkitchenBheatBpartyBcarryB	adventureBkeyBintroductionBfindingBfloorBholdsBearthBabilityBcurrentBhardlyB	publishedBtellingBsearchBofficeBsillyBfascinatingBofferBshapeBroleBpcBmorningBmichaelB	favoritesBmasterBfallsBbringsBwritersBcreateBlooseBballBspeakersB	installedBshippedBdieB	confusingB25BcordBscaryBpracticeBpurposeBsurpriseBunlikeBmovesBcreativeBeyeBrelationshipB	satisfiedBbrotherBvideosBerrorsBremoteB
constantlyB40BspeedBeatB	storylineBresultBmomentsBstudentBdurableBmissedB
apparentlyBwalkBshoesBfurtherB
incrediblyB
personallyBrecordedBdetailedBdollarsBmomBpanBteaBblurayB	complaintBaskedBtrustBanywhereBsittingBbladeBdavidBusbBproducedBbucksBadultBlensBstatesBfocusBcolorsBreceiveBjokeBjackB	practicalBsuperbBdailyBrequiredBincludesBfemaleBpopularBanswerBroadBrealityBjourneyBplugBsmoothBloseBmatchBlaptopBbeatsBboredBwideBhonestlyB	followingBcareerBstrangeBrollBbuiltBdeliveryBbecomesBwantingBinvolvedBwritesBcarefulBaccountBglassBheroBtunesBremoveB	technicalB
connectionBreadsBbluesB14BimageBhonestBoffersB13BlameBpossiblyBontoBsisterB	politicalBlistedBboardBcenturyBenergyBemailBfairBthemeBtalentedBheldBcardsBsequelBrealizedBamongBbeginBwarningBcreatedBmasterpieceBbeganBcultureBbeautifullyBfrenchBperBknifeBrecentBoilBtriesBperformancesBnotesBvacuumBhigherBnatureBfamiliarBmagazineBbrightBsickB	hilariousBteachB	elsewhereBcodeBtownBperspectiveBabsoluteBsharpBrideBfullyBexpectationsBpreferBbirthdayBchurchBkitB	worthlessBscriptBshownBnaturalBprojectBallowB	presentedBiceBmarkBcreditBsourceBlimitedBclubBpressBdiskBapproachBsellingBbuildBbloodBdisplayBrocksBsuccessBsecondsBexplainBherselfBagesBgeorgeBcoveredBsuspenseBillustrationsBteacherB2ndBtrainingBhookedB
thoroughlyBprovidedBaudienceBadultsBbiggestBactB
recordingsBcleaningBlengthBnoticeBwirelessBringBbarBoptionBchangesBfollowedBkeepingB	realisticB	potentialBmeaningBbeautyBvarietyBlikelyBchargerBdreamBkillBstudioBweirdBflimsyBmakerBterrificBphotoBfaithBfiguredBspeakBbillBgunBindeedBmultipleBtinyBneitherBregretBlidBnicelyBfightBlovelyBcomplexBorderingBstatedBchooseBshipBbikeBholesBeverydayBearsBhasntB
misleadingBgroundBtoolsBhatedBshareBpublicBlacksBmomentBdoubleBwoodBcontactBstoresBbiggerBmovedBlackingBlowerBadapterBrentBpunkBdeservesBforcedB	effectiveBromanticBrapBaheadBcompareBforceB	directionBcaughtB
eventuallyBdramaBratedB
directionsB	hollywoodBdescriptionsBgradeBmeantBcatsBbBentertainmentB	developedBpumpBdissapointedBcenterBvhsBdirectorBfallingBsupposeBjesusB
literatureBtomBtermsBimagesB
definatelyBstreetByeahBrespectB	literallyBuserBlatestBtoysBthickB	hopefullyBsafeBfolksBtoughBnamesB	somewhereBfavorBwerentBfrustratingBexperiencedBcookingBironBdiscsBrobertBturningBshopB
discoveredBeraBmonitorBbadlyBdownloadBlightsBlabelBshowingBbattleBpotBthrewBchinaBkeyboardBpushBinkBsoundedBbrownBsecretBshowedBstockBfillBsocietyB	emotionalBerrorBsadlyBdataBrareBharryBweveBcopiesBtheoryBquitBsoloBlivedBripBcommentsBtechBpressureBrepairBquietBmacBtipsBsaleB11BhpBheyBflowBtopicBcookBeffectB	amazoncomBputsBmemoriesBappearBgeniusBmeetBgrowBsteelBflavorBknowingB70sB
techniquesBdocumentaryBsomehowBrayBvsBspiritBnumbersBtowardsBdescribeBcBclaimsBsidesB1stBresponseBrouterByoudBfieldBhypeBsavedBtwistBtypesBtoneBledBrunsBfabulousBqueBdumbBdustBreasonsByoungerBbonusBdisneyBxBcutsBsmartBcanonB	beginnersBpaulB	necessaryBmurderBfamousBrelateBresourceBshelfBshouldntBbrushBunableBpocketBmediocreBmixedBawareBjoyBiiBanimalsBteachingBclockBjapaneseBbuttonsBfailsB18BseasonsBhopesBextendedBhandyBskillsBrecordsB
originallyBtraditionalBadvancedBchairBunbelievableBmediaBthinksBreachBholeBbelowBcostsBbesidesBelectricBwearingBspecificB	thereforeByogaBmp3BmannerBmanufacturerBbritishBgoldBcatchBchangingBspanishBallowsBminorBnumerousBsurfaceBwhoseBtransferBmodeB
compellingBleavingBkillerB	deliveredBafraidBpleasureBfootB	essentialBpainfulBkindaB	wonderingB45BpremiseBhealthBflashBlevelsBnBactorBcuttingBteamBnamedBtreatBaliveBareasBintendedBbeginnerBfunctionBcryBrecomendBconceptsBmembersBcompilationBclassicsBbuyerBmotorBieBstageBladyBsolutionBcatchyBexactBbuildingBpadBburnBthoughtsB	spiritualBpayingBstronglyBnormallyBholdingBframeBranBoddB	generallyBinchBscoreByB	situationBflickBsocialBlockBanswersBmaleBexperiencesBrubberBpianoBpaintBwireBhurtBlordBthrillerBtopicsB
consideredBviolenceBwarsBfindsBwindowBcarsBloadBsouthBlossBdebutBlessonBsignalB
technologyBfearBelementsBheadsetBbrothersBthusBconnectBwestBfaultB
everywhereBgrowingByorkB3rdBfatBdropBplacedBexerciseBpositionBdirectlyBvoicesBwashBfalseBkilledBfakeBwildBpostBalternativeB
additionalBcleverBgrewBwesternBbeltBlawBpackedBanybodyBwalkingBdadBtrainBconstructionBintelligentBspotB	searchingBcallsBshallowBspendingBnewsBsunBbagsB	continuesB	selectionBpriorB
believableBproBdrivingBcheckedB	contactedBthrownBbeachB	exceptionBwheelBtheaterBdamagedB
individualBpatheticBpinkBscifiBhadntBpeterBxpBscrewBasideB16BleeBworthyBhopedBentirelyBrulesBmouthBtwistsBsetupBengagingBfeelingsBaccessBcheesyBremindsB
televisionBofferedB2000B	dangerousBbreadBwB	inspiringBamazedBdecideBmailBstrengthBspeakerB	childrensBrippedBbreaksBgonnaBchineseBeditingBimaginationB	daughtersBtouchingBbrainBstepsBstoneBviewingBwhosBstandsBcreamBelBsonsBdirtyBchoseBmountBlaughingBfishBdroppedBbornB
referencesBpluggedBcountBtrilogyB	exercisesBbudgetB
reasonableBcasesBsuperiorBeatingB90BwinBlessonsB
situationsB	musiciansBcomicBvocalB
generationB
depressingBluckyBrB	correctlyBprintedBindustryBattachedBnowhereBshutBtillBbottlesB60BreliableBwillingB	currentlyBoptionsBwonderfullyBsendingBloversBdrawnBexplainsBhipBtuneBthruBtodaysB
commentaryBpeaceBstrapBaspectBaspectsB	religiousBsettingsB
previouslyBfailBwinterBloverBfightingBenjoyingB24BattemptsB	childhoodBinexpensiveBpaceBemptyBpassedBemotionBmoodBcombinationBmeetsBpassionBmainlyBfasterBimproveB	concernedBremovedBappropriateBpulledBproduceBsoapBrequiresBhdBjusticeBrelationshipsBlegsB
repetitiveBjoeBhookBappealBusaBuncomfortableBstereoBmoonBallowedBhoseBcrimeBcommentBstorageBtearsBunitsBproseBultimateBshowerBislandBmadB
complaintsBclipBwindBshoeB
impressiveBtediousBupdateBstationBexamBdatedBruinedBmaryBreligionB	standardsBdietBinspiredBrichardBmilitaryBliesBaintBconfusedBplanetB	equipmentBgodsBtreeBconstantBdoctorBmetBaddsBrecievedBrarelyBproperBwaitedBhangBrawBpricedBmovementBjumpBmonsterBwornBmodelsBmilesBcomplicatedBrackBbobBcashB200B3dBcrossBcablesBlovingBoperaBtranslationBpoetryBheadsBchargedBbladesBfilesBflyBgemBpetBsexualBnetworkBexplanationB	substanceBvaluableB	everybodyBpresentsB	classicalBlandBvisualBplanningBreleasesB
successfulBbitsBtourBparkBgermanBdrinkBtargetBbriefBslideBuglyBsectionsBemotionsBscaleBstaticBhealthyBsteveBjonesB	explainedBdeserveBviaBsmellsB
refreshingBshotsBclaimB	treatmentBfootageBanimalB0B	publisherB	pointlessBnewerB	connectedBanalysisB	sensitiveBscrewsBvampireBextremeBappleBalBbreakingB	regardingBcausedBmanagedBinstallationBextrasBroughBupgradeBtastesBlettersBburnedBaskingBstaysBfriendlyBupsetBsingersBcontainBcompactBwetBriceBadjustBdollarBoB
electronicBsheetsB	marketingBtankBclothesBformerBfashionBcreatingBingredientsB
disturbingBleatherBeducationalBsingsBmilkBlousyB
comparisonB
insightfulBdamageBimprovementB
commercialB	reccomendB	animationBchannelBblowBitiBsexyBneckBworryBhardwareBliteraryBphonesBhorseB
intriguingB23BdancingBchallengingBroundBqueenBtitlesBtheyveBpleasantBsBbalanceB
delightfulBcomprehensiveBmethodB	accordingBheavenBtalksBtapesB	narrativeBeditedBwheneverB	customersBsoundingBangryBcookbookBpresentationBtalesB	carefullyBintenseBheroineBcheaplyBgrillBtowardB
conclusionBenBenjoysB
compatibleBmistakesBdreamsBnonBfixedBinstructionBharderBgreatlyBportableBdealingBsuckBrandomB35BfinestBrelatedB
frequentlyBslowlyBjaneBgroupsBdollBthrilledBsevenBexcuseBswingB
dictionaryBapplyB60sBglassesB	performedBinchesBdiscoverBalarmBterriblyBasleepBraceBdB
attractiveBthomasBimpactBgraphicBdamnBbowlB
philosophyB90sBbondBgarageBcrackedBbecomingBaddressBrainBrepeatBspringBhardcoreBbearBwhomBaddingBbeatlesBclosedBdirectB
impressionBbeginsBevidenceBoutdatedBcontrolsBtendBweatherBinsightsBjokesBgayBcloserB	microsoftBsprayBsmithBoverviewB	memorableBsavingBpoliticsBpotterB	panasonicB	describesBheckB	happeningBcallingBweddingBmartinB	organizedBsuckedBdriverBcounterBstinksBopportunityBeditorBprojectsBpromiseBteenBfailureBcharmBandorBleadsB	suggestedBseaB
relativelyBbasicsBstruggleBseparateBmedicalBcupsBawhileBprogrammingB	chocolateBshockedBblandBnobodyBteethBancientBovenBforthB	computersB	biographyB
frustratedBmediumBoverlyB	recognizeBvisitBvendorBsilverBhiddenBstylesBchoicesBkickB	materialsBdrawBgorgeousBfranklyBimprovedBriskB
convenientB
worthwhileBtextbookB	overratedBkeysBgrandBclipsBdeeplyBarmBsatBperformBmirrorBhangingBpreparedBviewsBsalesBmarriedBbrandsBmeatBprintingBmarriageBmapBremainsBphysicalB
whatsoeverBrereadBrushBanimeBstephenBgrabBfabricBlosingB
ultimatelyBeaseBgasBcellBcleanerB	challengeB	forgottenBlaughedBepicBproofBrecipeBwastingBholidayB34BsystemsB
adventuresByaBcontemporaryBbasisBdrillBtemperatureBringsBchristBfileBblahBpenBsurelyBformulaBthemesBghostBvanBshoppingB
investmentBacceptBadviseBcrappyBtaughtB
interviewsBpoliceB
scientificBhassleBcomfortBbabiesBknivesBfrankBstunningBrentedBsafetyBwannaBsticksB	companiesBminiBpromisedBspeakingBleakBprotectB
introducedBmajorityBstayedBwinnerBflawBteachesBsomebodyBsugarBdeliverBparentBridBgottaByellowBeventB
governmentBworldsBcriticalB	receptionBshootBabuseBsignBtonsBgraceButterlyBcoreB	paperbackBsurprisinglyBrecommendationBvinylBlightweightBcomplainBreadableB	americansBworeB
researchedBeBadvertisingBtipBwarnedBhelpingBphotographyBburningBsleepingBantennaBkillingBdaBnonsenseBdeeperBripoffBmathBmapsBblockBdeskBdirtBsportsBbenefitBpickingBmaxBmillionB
discussionBmansBremakeBspotsBpersonalityBwonBjimB
protectionBgripBholderBfiltersBstopsBsourcesBgrownBanneB	stainlessBregionBgardenBangleBemBmelodiesBwittyBenglandBdiaperBgiftsBcharmingBsupplyBprogramsBlpBlosBappearedBwheelsBlastsBdisapointedBpalmBletterBfingersBsnowBcontentsB	cartridgeBrequireBitalianBpicturedBsuddenlyBhopBdecisionBpennyBpoolBjamBupdatedBesB	replacingBblendB	containedBwakeBprimeB	educationBcuriousB	communityBflyingBhalfwayBsampleBfactoryBwineB
overpricedBinspirationBcheeseBstBdriversBtimelyBavidBweekendBrepeatedBgoldenBreceiverBpathBusersBpillowBscentB17BmemberBsouthernBchrisBsecurityBheresBpraiseBkindsBawkwardBtreasureBsuspectBeuropeBhundredBarmsB	yesterdayBdevelopBdevicesBtermBinnerB
regardlessB	initiallyBpackagedBspecificallyBballsBbruceBtrickB300BleaksBsecureBpeoplesBbreathBvacationBbarsBthumbsBhillBxboxBuniverseBwashedBvaluesBamusingBscottBdeliversBchargingBgrandsonBchainBangelBcapBleadingB	everytimeBlaughsBexplanationsBcaresBrollingBcandyBboxesBunhappyB	virtuallyBequallyB
remarkableBdegreeBtruckBamazonsB
disgustingBbehaviorBcontextBprovesBthrowingBpolicyBdesireBremindedBdutyBgoreBportionBdirectedBserveBpatternsBdrumBglueBproveBtimelessBmikeBattitudeBnorthBhumorousBwiseBboatBstringByrB	subtitlesBnationalBcaptureBwisdomBescapeBunusualBgpsB80BnoisyBblenderBwellwrittenBtubeBsignificantBmerelyBwilliamsBbusyBcartoonBmagicalBsheetBhandlesBexchangeBbetBhundredsBflawsBdozenBlitterBadB	techniqueBruleB	deliciousBunBtearBdisasterBstrapsB	receivingBnativeBvisionBhatBattackBwalmartBapplicationBupsBsuctionBfoolBopenerBbootBdaveBnotedBtrayBteenageBrazorBtexasBspinBsealBclassesB	functionsBmountainBunrealisticBvistaBfamiliesBjohnnyB	universalBneatBmethodsBconciseBbillyBcarpetBthoroughBfollowsBneedlessBrootsBbargainBcakeBeffortsBgreaterBalienBscaredBwitBsubtleBcapturesBportB
managementBpricesBsmileBgenericB
satisfyingBlistingBlieBsolveBoccasionallyBdrugBtestedBbugsBassumeBcausesBspareBfooledBexpertBfingerBukBcolorfulBteachersB
explainingBfourthBinstrumentsB
californiaBshockB	metallicaBplaneBgateBgainBtimerB	structureBlcdBdrivesBassemblyBdealsBstudiesBmothersBlifetimeBbuckB
supportingBexistBbentB	cardboardBstandingBenvironmentBcarryingBalrightBholyBconB
controllerBjudgeBbirdBdrumsBcampB500BblownB
girlfriendBlinkBintelligenceBsentenceBarmyBsteamBactionsB
excitementBclickBmotionBlegendBshootingBcreepyBphotographsB	containerBexceptionalBtallBhauntingBdramaticBreportBtouchedBsizedBnastyB	chemistryBeightBarrangementsBplateBcatholicBmatBlayB
resolutionB	mysteriesBsnapByardBservedBpadsBedgesBviewerBpantsBarriveB
widescreenBcheckingBmeasureBlighterBcivilBjacksonB	halloweenBwilliamBsecretsBviolentBtributeB
irritatingBsinkBexpressBsistersBashamedB4thB	presidentBcreatesBshirtBbackupBbirdsBeastB	incorrectB2003BlondonBfBslightBwelcomeBbushBtBloadedB	boyfriendByouthB	professorBsubjectsBplotsBgentleBcornerBpromptlyBordinaryBnightsBintroB	producersBchickenBmachinesB	continuedBblameBsuggestionsBkiddingB	companionBbathroomB
supposedlyBofferingBmarksBdegreesBrelevantB1000BtrekBguitarsB
surprisingB
mainstreamBownerBfreedomBpracticallyBcrackB	redeemingBtoasterBgiantBkissBarticlesBdialogBfocusedBawsomeBsizesBmoralBpacedBdinnerBmessagesBforgotBtwentyBnetBbulbBbirthBreturnsBdyingBmatureBbringingBheaterBpreventB	portrayedBstretchBinstantBegBnailsB	finishingBchildsBstringsB	mechanismBhorriblyBfrustrationBfoamBturnerBbiasedBspectacularBspeaksBmooreBfeedBpicksBcriticsBblewBteensBremainB	interviewBunitedBstiffBjBartsBrelaxingBcamerasBwoodenBozBbenBactedBsaltBeveningBappreciatedBwrapBmanagesB	influenceBfillerBacousticBpuzzleBgenuineBsplitBproudBbootsBclueB2004BgBbluBpoundsBinsultB	nightmareBlolBinspirationalBmentalBpullingBslipBopinionsBgrinderBautoB
difficultyB
appearanceB	scratchedBessentiallyBdrugsB
rememberedBpoemsBdragonBassembleBengineB	scratchesBriverBscratchBsightBgrantedBflipBtensionBflightBalikeBnutsBdoorsBitllBreviewedBlampBgoodnessBtalkedBignoreBbatmanBstonesBmanageBendlessB	sentencesBindianB
pleasantlyBmelodicBactressBfiguresBsitsB	favouriteBprinceBdistanceBlistsBbaseballBcombinedBmusicianBdelightBinsertBvividBkingsBbulkyBprepareBelementB
functionalBcrashB	amazinglyBcassetteBcapableB
understoodBirishB
describingB
acceptableBlatinBactsBvehicleBhighestB
remasteredBgunsBdigBconstructedBtrailerBcentralBdisagreeB	travelingBcrewBminBwrappedBclarityBunknownBtwistedBlaidBparBfolkBidealBtitledBstrongerBmindsBsitesBriffsB
dishwasherBcasualBprincessBflawedBfellowB
creativityBinstrumentalBtreatedBwheresBcostumeBchicagoB
departmentBcapturedBdryerBgospelBlocationBhaBfilmedBdrinkingBdeckBdiesB
mysteriousBsmokeBsurviveBfallenB
cartridgesBwiresBskillBconsumerBpregnantBrussianB
universityBroseBliquidBemailedBluckilyBcoveringB
installingB	cuisinartB	orchestraBdesiredBdefiniteBdragBfunniestBfoodsB
disappointBnineBblindBjacketBunfortunateBupbeatBattachBapparentBridingBmBbutterBdishesBmenuBliberalBjapanBcrowdBmelodyB	directorsBelvisB	authenticBpatternBgearBfirmBgameplayBdanBinitialBcoverageBsinglesBidentifyBtoddlerBgrammarBunnecessaryBtimBsquareBsuitableBcrystalB
christiansBmattersBdressBsamsungBbotheredBrbBfactorBminimalBstudyingBladiesBawardBhooksBenterBlettingB
downloadedBtripsBcleanedBglovesBballadsBbrianBrecallBcollarB	contrivedBappliedBwhoeverBtonyBinternationalBprivateBjewishBorangeB
inaccurateBdrivelB
attachmentBwitchBworriedBzombieBfoxBwashingBhonorB	elizabethBshorterBresetBtoiletBshellBblowsB
simplisticBstomachB	advantageBheightBlightingBcaptivatingBinferiorBraisedBlegB70BpuppyBquotesBloBstrategyBsocksB	appealingBrolesBgarminB	screamingBruinBlogicB2005BnoseBnarrowBbalancedBcharlesBbombB
reasonablyBbcBtonBuninterestingBstressBcausingBsarahBsamBtheatreBsamplesBadequateB	featuringBvolumesBfathersB	encourageBittheB	destroyedB	convincedBsceneryB	provokingBmissionBpansBeuropeanBchosenB	offensiveBillustratedBtieBshakeB	financialBbasketB
consistentBinterpretationBteenagerBtriteBoutputBlistenerB	interfaceBbritneyBtragicBliftBwatchesBinstanceBhiphopB
collectorsBcryingBconversationBfortunatelyBremixBdecadeB	providingB	traditionBskippingBprofoundBaccidentB2007BseekingBgrippingB
atmosphereBstrollerBmagnificentBsungBaidBsakeBmrsBguidesBdearB
incompleteBsummaryBoppositeBextraordinaryBculturalB	enjoymentBafricanB2001BfmBdishBfacesBwouldveBinternalBshaveBmicBfeaturedBcordlessB	attemptedB	detectiveBrushedBhappierBblankB
occasionalBughBbathBdiapersBcultBreliefBrearBdrawingBfairyBosBps2B
instructorBhumansBdisksBbiblicalBpearlBstickyBkevinBstationsB2002BbeliefBseB
principlesB	instantlyBlazyButterB
publishingBlewisBriseBpileBartworkBactiveBtendsBidiotBgreekBwristB	thousandsBdecadesBborrowedBtaskBbedroomBparisBgrossBsuitBtyposB	bluetoothB	solutionsB2006BownersBnoviceB
highlightsBconsistentlyBimportantlyBnailBpretentiousBbraBpostedBwwiiBbangBpurpleB	portrayalBhealingBdollsBguessingBmattressBlackedBtestsBelectronicsBinformedBdiscoBusageBcrispBadvanceBmakersB	bookstoreBmastersBseesBserialBratingsBsheerBroutineBrightsBheatingBheroesBartisticBwoodsBgrindBentertainedBangelsBwarnBthierBequalB	sufferingBharshBforeignBservesBremindBfancyBworkoutsB	upliftingBpopcornBpassingBcourageBconflictB
accessibleBupperBtragedyBsilentBaliceBfittingBeditionsBindexBarticleBpowersBbendBpBtireBtheyllBfootballB	collectorBleakingBhorsesBbizarreBmixerBjeffBoperateB
thoughtfulBnickBjasonB20thBhenryBtouchesBsellsBangerBleaderBserverBhandlingBfragileBscannerBprimaryBlosesBmusthaveBmaskBcycleBrobinBheavierBformsBrubbishBrhythmBphysicsB	microwaveBdrawingsBmarchBboreBtradeBopensBstickingBbuyersBfunkyBgymB
conditionsBchannelsBbridgeBshineBoldsBnotchBlB400BfluffBowningBjimmyBtrapBforcesBlbsBswitchedB	seeminglyBmtvBemailsBunusableBracingB
tremendousBsufferBsensorBincreaseB
unexpectedB	evolutionBdevilBgoalB
propagandaBannBquestBchristianityBheartsBdreadfulB
activitiesBsanB
repeatedlyBwomensBcageBstormBjobsB	skepticalBorganizationB	statementBaccuracyBslimBdonBdropsBcomboBtreesB	primarilyBchartsBbookletBpullsBskyBlaserBebayB
reputationBcornyB	laughableB
microphoneBkettleBericBplansBmidBtagBcharlieBjuiceBkeeperBrespondBdestroyB
adjustableBhunterBcancerBshipmentBpushedBcopB
strugglingBbinBlinksysBsignsBanimatedBsoothingB22BclicheB	qualitiesBcriedBskippedBfocusesBexploreBmixingB
meaningfulB	operationB
theatricalBdislikeBcookerBspendsBstripB	corporateBaliensBwalkedBgranddaughterBexternalBcategoryB
foundationBquirkyBtalentsB	pregnancyBenemyBblocksB
instrumentBheavilyBcapacityBsundayBpushingBjavaBsweatBwishedBdjBconnectionsBfeederB	originalsBprotagonistBpottyBtowelBpunchB	strugglesBapplicationsB21BbeliefsBaccountsBshaverBdesignsB50sBlegalBdarnB150BjordanB99BreactionBdialBlabelsBprovedBwallsBknockBwearsBmixesBsocalledB	teenagersBchargesB	guaranteeBtrialBpublicationBacademicBmassBreferBdissapointingB	extensiveBmartialBassumedB	afternoonBlinerBplantsBblastBoutdoorBlogitechBwonderedBshockingBtheoriesBsoupByoBmatchesBgloryBseekBvelcroBcautionBhallBlimitBzoomBrefusedB	executionBkellyBjumpingB
attemptingBrobertsBannoyedBaffordBfaultyB
vocabularyBallowingBsellersBmakeupBfruitB	regularlyB	furnitureBhammerB5thBpocketsBscreamBsavesBhideBoscarBbitterBmeetingBstayingBsongwritingBofficialBclothBpreciousBboundBhdmiBnonethelessBdistractingBwaistB	reviewingBpersonsBtrimmerBprayerBraiseB	extensionBpassagesBessenceBrevengeBgrishamBguestB
suggestionBmedicineBindiaBlasBsuperficialBcloselyBclayBproducerBborrowBeggsBadorableBpourB
underratedBhittingBtricksBremovingBscopeBindividualsB
developingBpoppedBinnocentBessaysB	resourcesBchickB360BsumBhoodB	fictionalBbossBthermometerBengineeringBchipsBchaseBstealBraveBsloppyBshoulderBrowB
friendshipBcookiesBvietnamBodorBcontrastBsuspensefulBhotelBviewedBtextureBgrayBexposedBlemonBleakedBjerryBearnedBgraspBacBsoldiersBfunkB
publishersB	connectorBwaveBcartoonsBgrassBedBshadowBgaugeBconcernBcentsB	dedicatedBreadingsBdecemberBharrisBopposedB	classroomB
importanceBarrivalBsharingBtaylorBcreationBnationBalasBslowerBwondersBpityB
thankfullyBsantaBrentalBsandBcarriedBundergroundBscanBabsurdBpointedBboneBvagueB	surprisesBmonstersBdrainBanywaysBwinningBmobileBgrowthBdrawbackBtortureBsequenceB
selectionsBlyricalBcoloredBdevotedBtruelyBplatesBpowderB	desperateBjenniferB
challengesBlikingB	musicallyBpilotBbattlesBpinBsagaBlowestBlatterBhenceBbellBnarratorBdifferencesBheadacheBdarknessB	criticismB	identicalBplantBsubBgrowsBphrasesBneilBcreditsBpacksBdownsideBalltimeBindepthB
definitionB	apartmentBhintB	automaticBpriceyBentryBcraftBcinematographyBneverthelessBdiseaseBdellBsolosBpatienceBfameBvolBafricaBschoolsBclosetBsurvivalBcoastBdesertBcureBwritingsBwealthBgelBreportsBcombatBprintsBsharedBjournalBintellectualB75BresponsibleBproteinBnikonB19BpresenceBsearchedBfordBalexBleBsoonerB
convincingB
disjointedBperfumeBnakedBstreetsBdareBtornBencounteredB
affordableBtomorrowBdissapointmentBmellowBhospitalBretailBfloydBtreatsB	paragraphBstableBcircleB	sequencesB1999BryanBreachedBhumanityB
revolutionBrevealedBeggBshedB	marvelousBdrivenBamateurBzoneBdiamondB	delightedBrodBbookiBdeservedBdiaryB
electricalBpoeticBhuntBfranceB	downrightBuncleBprovenBfillingBlitBinputBnecessarilyBjrBjarBbubbleB	testamentBaccessoriesB	ourselvesBviewersB
supplementB	promisingBpuzzlesBprogressiveBbonesBgaryBlayoutB	releasingBtaxBfactualBdeanBsurroundBmountingBachieveBinsaneBpaintingBgolfBstoveBautomaticallyBinvestBcoolerBdavisBrecorderBgrooveB
confidenceB51BhelloB
washingtonBremotelyBquoteB	dependingBmaintainBselectBweaponsBmillionsBcraftedBgiftedBstatusBdescriptiveBshelvesB
depressionBselectedBgermanyBmealBkillsBfoldB
durabilityB	painfullyBmotorolaBelegantBdesktopBagentBprisonBcaptainB	typicallyBlonelyBbelievedBtechnoB	naturallyBkicksBjumpsBindependentBrustBcinemaBlockedBgoogleBminusBpackingBfarmBcookieBconservativeBbrutalByrsBoutletBlogicalBplugsB	thrillingB	operatingBcottonBsonicBtestingBtwinBdangerBnonstickBexpenseBrelaxBlastingBdcBthousandBstorytellingBjohnsonBhungBshortlyBclancyBcampingBburnsBsolvedBmanufacturersBsubscriptionBguiltyBtentBjuneB	countriesBthreadBbelongsBwingBspiceBmessyBmassiveB	comparingBcastingBcostumesBwolfBtheydB
psychologyBcuzBdissappointedBdelBspreadBbloodyBdarkerBshinesBfifthB
unreliableBdriedBbeansBscrewedB	headphoneBdrewB
definitiveBcarafeBpurposesBbatchBmexicoB
recognizedBhuntingBdiehardBsuggestsBsaturdayBcollectBxmasB	argumentsBvastBtubB	supportedBjoinBjeansBgreyBspeechBemotionallyB	purchasesBaffairBadamBtherapyBfeedbackB	countlessBcircumstancesB
uninspiredBtwinsBeffectivelyB	guitaristBmadonnaBreflectBprogressBampB	completedBcarriesBtastyBswordBintrigueBlakeB	movementsBdudeBbraveBbankBletdownB
elementaryBsortsBspyBoursBpoundBinstallmentBgangBprideBdualByuckBtoastBprosBunaBcornersB
perfectionBbroadwayBaluminumBdrmBcollectionsBshampooB	decisionsBcoatB
altogetherBhowardB	happinessBclaimedB	remainingBsufferedBpartnerBbackpackBdynamicBtopsBhusbandsBfloridaBsuddenBdecidesBsdB
innovativeBhurtsBbulbsBaccentBallenB	alternateB	involvingB	renditionBeddieBhorridBobscureBflagBfloorsBfirmwareBbiasBmessedBwilsonBsnappedB	objectiveBjulyBsyncBcomplainingBoceanBproducesBdeletedBtransmitterBcouldveBchipBouterBmindlessB	documentsB	creaturesBcabinetB	assembledBitunesBhatesBspoiledBservingBguardBflexibleBwomansB	producingBempireBspokeBbakingBaprilBespressoBrescueBstarterBfridayBvampiresBgemsBdrawerBbindingBasksBtradingBscareBrollerBnudityBcoatingBnephewBclosingBsoulfulBignoredBtrailB
adjustmentBvictimBpsychologicalBtoshibaBtextsBactivityBdraggedB2008BcourtBruinsBoriginalityB	neighborsBsorelyB
adaptationBstarringBbuttBsoooBchemicalBnoisesBpopsBdudBlyingBhersBsuccessfullyBbasementBparaBusableB	definetlyBsessionBzipperBdoctorsBpornBmountedBkBchuckBreceiptBsmokingBhappilyBadamsBjetBpaintedBenlighteningBargumentBbelovedB
associatedBwayneBhesitateBultraBstylishBturkeyB
complainedBbareBvBremixesB	locationsB
phenomenalBbostonBclothingBcentB
underneathBmarioBfacingBjustifyBjewelBunacceptableBblanketBalanBmiracleBholmesBorganicBrelyBleagueBlocksBvintageB
overlookedBstoodBimportBurbanBslotBovercomeB	displayedBbuddyBbelievesB
meditationBfrozenBsurroundingBbugB	highlightBconversationsBmomsBflawlessBeasternBcansBlistensBcommunicationBmildlyBkateBsosoBsinB
concerningBhonestyBclimaxBimaginativeBtonightBsophisticatedBlilBterryBcooksBunevenBrevealsBsimonBrentingBmileB	switchingBbayBchristopherBdocumentationBspellingBlargelyBtripodBsmoothlyBmanufacturedBglimpseBwalksBdefectB	australiaBpatchBitalyBrussellBmarkedBfeedingBaccomplishedByoursBlikeableBglobalB	lifestyleBexpiredBnewestBseanBpoignantBvalveBjumpedBcartBfuzzyBthumbBdylanBtossedBsooooBnyB
performingBstraightforwardB	legendaryB
determinedBroyalBminimumBjamsB	preferredBmissesBimageryBgluedBspokenB	indicatedBlegacyBlunchBassBanytimeBballadBiiiB	discoveryBbreezeBbackingBdianaBclichesBesteBbrewB
passionateBgamingBagreedBcaringBtiedBmattBlatelyBrobBportraitB	discussedBlensesB	disgustedBansweredBneedingBnintendoBdsB	hardcoverBdownhillBsilenceBunderstandableBlindaBrefuseBoverwhelmingBpolishBsuitedBpatientBfightsBearbudsBeagerlyBtempBmereBeaBsportB	pattersonBdiscussB55BsusanBdrawsBreplyB	insultingBspellBonoffBepsonBoctoberB
componentsBstreamBphraseBperformsBchestBamericasB2010B
unreadableBsealedBnotebookBmemoirBlabeledBfollowupBgraduateBregardBnutB	existenceBhandledBmoldBfeeBmillerB
strategiesBthickerBholidaysB	camcorderB	intriguedBgroceryBvictimsBeroticBworshipBpersonalitiesBcanadaBvcrBtadB	narrationBgrantBcheatedBexistingBcastleBnancyB	magazinesBslidesBreducedBaugustBleadersB98BcontraryBsauceBjanuaryBdefBcomicsBwickedBrevealBdeluxeBswearBrcaBrecommendationsB
collectingBbsBglowingB	directingBfrequentBsaverB
accuratelyBidentityBintendB95BpieBdisplaysBgratefulBmanagerBfishingBchorusBtranceBpicsBeditBasianBthreadsBpartiesBdrummerBidolBepBcircuitBservicesBetBappreciationBrequestBpatBcountingBbiteBstolenBpoweredBmanufacturingBanthonyBdiverseB	confusionBphilBmixtureBstellarBconclusionsBintermediateBhiB	fragranceBpillsBfreezeBrogerBvisuallyBpairsBsometimeBlabB1970sBsymphonyBthirtyBmatrixBsessionsB
leadershipBcriminalBcousinBtapBexecutedBknobBarthurBaffectBcarrierB	introduceBwiiB
statementsBshallB	depressedBps3BpromisesBoemBfortuneBevidentBdiscontinuedBcutterBpetsB	encounterBurgeBbearsB
screenplayBmugBkornBroomsBtiesBignorantB	householdBshouldveBaccidentallyBsuicideBsuffersBandyBeditorsB
nonfictionBchewBflowersBcaredBbroadBcribBwingsB	intensityB1980sBromanBdozensBlaughterBchessBrapeBjessicaBpreviewB	practicesB	listenersBdroppingBeveBwishingBu2BrootBmodemBemphasisBbenefitsBgrandmotherB32BvocalistBharmonyBstickerB
noticeableBnieceB
dimensionsBtastedBhintsBramBloyalBobjectB	anecdotesBakaBzenBrollsBplannedBlimpBhumourBdifferentlyBlouisBegoBcelticBsmelledBpanelBstudiedBminsBfredBpressedBbelkinBboltsBprayB
invaluableBagendaBhousesBdummiesBwarnerBstewartBlinuxBcookedBobsessedBsfBconvinceBspiteBranksBstatingBobjectsBnovemberBrickB
conspiracyBloopBsangBlucasBblessBbabysBchartBtowerBsomeonesBpaddingBpsBgenerationsB2009BsoleBslickBclarkBexistsBbeerB2011BshapedBcommandBamountsBstanleyBracistBaaBbreathtakingBblowingBbarbieBpapersB	efficientBstaleB
industrialBconsistsBdatingBlocallyBvisibleBshinyBviolinBmentionsB
flashlightBhandbookBsupportsB
outrageousBgenerousBshipsBexposureBcrashesBburntBtablesBchildishBblinkBwaxBchancesBsevereBchairsBrudeBdeckerBwizardB
reccommendBdrunkBdoseBmidnightB	everyonesB
comparableB	abilitiesBfondBadoreBdelicateBcruiseBsomedayB
paragraphsBlearnsBdemandBbusB
influencedBupgradedBjuliaBidiotsBjackieBdatesBrivetingBnortonBmensBdanielByawnBtastingBshoddyBbudsBposterBhomeworkBfaucetBbellyB
connectingBbelongBvillageBgrainyBflowsBpromptB	scriptureBtwilightBburnerBbeefBskipsBtrackingBridiculouslyBnycBjonBtheatersBsteerBjuvenileBrabbitBfunctionalityB
afterwardsBacidBconcreteBphilipsBmaximumBdiscountBreduceBquestionableBlayerBcruelBgapBunbelievablyBdealerBvegasBmarsBcomplimentsBengineerBadmireBfillsBupsideBtenderBjeanBbeginingB	entertainBcompartmentBtowelsBoughtBloadsB
chroniclesBbeastB	wrestlingBinteriorBfenceBdlinkBpoleBjuniorBdawnBzombiesBbubblesBbarbaraBsofterBpitchBknightBfateBrapperBpublishBexBstripsBnonstopBlarryBattacksBmillBspinningB	earphonesBwarmingB	processorBpencilBititBbraunBlinksBamyBassumingBseatsBrelativeBstaffBlipB	charlotteB
amateurishBanglesBwipeBtommyBmildBmusicianshipB800BguestsBfaithfulBdiagramsB	septemberBdoughBjewsBcompetitionBestateB600B	miserableBclientsBgrandchildrenBintroductoryBtrimBstrikesBsignificantlyBhurryBembarrassedB28BhoneyBinspireBfliesBapproximatelyBanticipatedBphilosophicalBgeneBstereotypesBrhymesBfacedBacademyBchoppyBtravelsBtightenBrouteBindoorBeconomicB
unpleasantBmanuallyBforgettableBdemoB	performerBcornwellBtimingBhB	anthologyBpretendBlouderBlaborBlegendsB	distortedBportraysBdocumentB	overnightB	compelledB2012B	versatileBsubstantialB
equivalentB	newspaperBcombineBsequelsBraisingBmealsBextentB	confidentBbrassBtossBquarterBforestBbodiesBairportBwiderBrealyBlotionBfuelBrandomlyBsatisfactionB
representsBrefundedBcarterB	determineB
continuingBstruckBrageBmuscleBftBculturesBmonkeyBaddictedBtechnicallyB	languagesB
engrossingBkongBcontinuallyBbootlegB
restaurantBanniversaryBsatireBadvertisementBstainsB	investingBshortsB	occasionsBtoddlersB	componentB	greatnessBsparksB
substituteBauntB911BexpandBalertB
revelationBdaddyBconcernsBcombinesBanalogBgadgetBcredibilityB
simplicityBcrudeBpotsB	backwardsBthoughtprovokingB	addictiveBreminiscentB	masterfulBcornBversusBshadowsBstevenBjointB
mechanicalBhooverBgrittyBwarpedBhungryBrealismBguidanceBwarmerBpreciseBresearchingBsleeveB	scholarlyBpeakBperiodsBbuffBagedB
physicallyB	parentingBvisualsBporBfitnessBsurgeryBwiredBscoresBinteractionBurBlesserBlawnB	excessiveBhuhB
separatelyBhousingB	breakfastBstrippedBcopiedB
brillianceBsoldierBshakespeareB	believingBwatersBcheapestBshadeBhedBreBfurthermoreBbedtimeBopticalBmythBridesB	requestedBjanetBweightsBspearsBvisitingBhandfulBrockingBcalmBcubeBgearedB
experimentBearringsBbikesB	obnoxiousBnicerBbrilliantlyBsliceBboseBtwelveBpoemB	fashionedBdepotBawardsBislamB
flawlesslyBechoBbravoBaustinB	struggledBropeBpepperBeagerBbuildsBjulieBlockingBhomesBairplaneBdrinksBcracksBbulkBnursingBintimateBfedBavailBvetBpatrickBimpressBwhiningB250BsupermanB
influencesBdragsBbowlsBtrainedBrecognitionBlisaBcanadianB1960sBscoopBmariahB26BstrikeBreportedBgoodbyeBdefenseBvanillaBlucyB	addressesB
sufficientBkoontzB	slightestBmowerBfrighteningBmeltedB
disposableBrehashBprimerBfontBmightyBbeatingBcitiesBedwardBparkerBjosephB	integrityBenemiesBcoasterBsparkBtrioBnopeBinfantBhornBbarryBdisgraceBtriggerBsoreBoutcomeB6thBpokemonBfocusingBcrankBgainedBalcoholBreggaeBoutlookBgloveBboardsBprintersBplacingBupdatesBboomBandersonBmuyBmiceBwalkerBportsBcoachBanitaBwalletBlatchBnavyBmindedBjoanBthrillBunlikelyBramblingBbellsBphillipsB	christinaBslidingBsatisfyBheartwarmingBgrindingB
basketballB
reflectionBplagueBmassageBcodesBboldBblessedBawakeBsupernaturalBgbBpizzaBcomfortablyBpilatesBwishesBrepairedB	positionsBboredomBadditionallyBoprahBloserBkeithBvisitedBterrorBpoppingBenhancedBshavingB	landscapeBneighborhoodBfreakB	accessoryBgoofyBsharesBgroundsBtilBtempoBacceptedB1950sBseamsBreferredBpreparationBmexicanBtiresBreminderB36BladderBcommercialsBessayBcouchBpressingBmeiBjayBbobbyB64BpostageBlawsB	repeatingBprofessionalsBcomposerBadvisedBvalleyBroofBlimitsBlawyerB	immenselyB
humidifierBhauntedBconcertsB	deceptiveBconvenienceBdickBiphoneBdownloadingBdealtBsappyBposesBtheologyB	permanentBpatriciaBjewelryBexplorationBthrowsBstrictlyB	heartfeltB
statisticsBexperiencingBbummerBwhereasBprizeBpolishedBlocatedB	cancelledB	revealingBtripeBeducatedBalbeitBhumbleBfailingB	emergencyBsoulsBpickyBobservationsBcollinsBdewaltBshapesBtigerBrepresentedB
transitionBpoliticallyBhelmetBrainbowBleanBhandedBsharkBgraveBmeshBscamBpackagesBaffectedB	representBnonexistentBsqueezeBrefersBboxedBdissatisfiedBtoesBreelBmaidenBhorrificBevenlyBdumpBblurryBpbsB
translatedBpleasingBwarriorBlivelyBloadingBkneeBhamiltonBengagedBcgiBadjustedBstrangerBfusionB48BphantomBwitnessBcancelBbbcBthoBpurseBmustreadBtrickyBgriefBmarineBkenBgenesisBcarolBtightlyBcharacterizationBtrendBmurdersBrefurbishedBrecoveryBlesBpinsBfreezesBcradleBsteadyBspanBinappropriateBresolvedBirelandBianBconveyBpremiumBvacBrolledBateBtvsBstandoutBattachmentsBpriestBgodzillaBconditionerBbrooksBpastaBindicateBcrisisBanticipationBdimensionalBcoBautobiographyBunplugB	teachingsBapplyingB	protectorBexpertsBmeaninglessB	intuitiveBexperimentalBbracketBsurvivedBstoredBfadedBentitledB	scientistBlifesBkimBsuprisedBspeciesBeminemBkudosBintentB	harmoniesB21stBstuffedB	secondaryBimaginedBcatalogBvillainBrisingBreflectsBrefillBrappersB
performersByoutubeBsympathyBehB
containingBinconsistentBaimedBtoeB	atrociousBselfishB	bookshelfBronB	redundantBpspB
distortionBresponsibilityBflavorsBbreastBdefinedBcomfyBfosterBkneesBhumB	expansionBkingdomBgreedBrippingBliteBcleansBwordyBcampaignBcomediesB	photoshopBofficerBmeritBlengthyBclintonBreplacementsBpillBcommunicateBtacticsBfearsBweeklyBregisterB
complexityBbyeBpensB
kitchenaidB
expressionBadsBpurelyB
motivationBhistoricBstickersBdemonstratesBplaystationB	exploringBverseBseniorBwifesB
practicingBwedBvibeBflowerBdroveBburiedBphotographerBweakestBtongueBtinBperryBchoosingB
accomplishBboltBratesBcardioBfilmingBanxiousBtapedBgoodsB
resistanceBdivorceBdeltaB	keyboardsBdivineBthaB	protectedBstinkBlbBdashBwebsitesBreachingBbuysBrepeatsBreissueBlionBvalidBtailBsewingBgenresB
fascinatedBcordsBambientBelsesBbumpBseverelyBmarryBillnessBcluesB	renderingBnorthernBbucketB	holocaustBhandsetBhistoricallyBandrewBsecurelyBembarrassingBcowboyBleapBoffendedB
irrelevantB1998BsnugB
presentingB	preparingBlikableBchordsBbreedBlogoBgrainBrobotB
unoriginalB
horrendousBheatsBgrabbedB	committedBlayingBindieBdislikedBwipesBunforgettableBpromoteBdannyB	curiosityBtiresomeBseedsBcushionBrequirementsB
introducesBconsoleBspoilBolBfluidBrachelBcountyBcirclesBspoutBlaneBiraqBordersB	measuringBthinnerBtheirsBdependsB65BbrushesBrechargeableBratioBpatientsBhubBcustomB	breathingBvariedBlauraBrefusesB
compassionBtabsBparodyBdryingBbtwBanyonesB	adjustingB	resultingBneighborBspiritualityBobtainBnaiveBeconomyBjoshB
cumbersomeBhdtvBexploresBdenseBballetBsignedBnetgearB
lacklusterB
underlyingBcomoBwoundBtriumphBtitanicBrosesBfoughtBracismBomgBconvertBlayersBdouglasBbulletBsupplierBresolveBflopBeatsBvoteBsegmentBcouplesBconventionalBbuzzBpedalBfiftyBfaintBestablishedBendingsBchamberB	attractedBtrialsBawaitingBmoderateBhandsomeBceilingBoutdoorsBhboBgreaseBdesignerB27BstudiosBsirBhackBchordBannaBkillersBsizingBbrickBmelBhostBfieldsBthankfulBimmatureBrankBinsertedBboschBboostBmiBkurtBcookwareBchillBtrappedB
discussingB	answeringB
waterproofBencouragingB	franchiseBfoldsB	definitlyBbeanBspineBmatchingBexistedB	discussesBlipsB	authorityBdestructionBnanoB
subsequentBnewlyB	consumersBhollowB	increasedBsuppliedBexceptionallyBcreatureBclosestBwannabeB
complimentBsubparB120BsegmentsB	prejudiceBvibrantBslaveB
scratchingBpacingBjungleBseedBfifteenBsucceedBnirvanaBflicksB	expressedBbecuaseBabusedB	telephoneB	fastpacedBtransactionB101BoccasionBbrideBshiftBpulpBnowadaysBrhythmsBportrayBfadeBcrashedBpoetBpassesBlongtimeBcalendarBgripeB	depictionBbooktheBmatchedBcoffeemakerBsympatheticBprepBinterferenceBhillsBaustenBatlasBfisherBsleekBfunnierB
calculatorBsandiskBnoraBmusclesBhesitantBfountainBcoursesB7thBscholarshipB
popularityBinjuryBclumsyBtrafficBstoppingBfinaleB	nutritionBdiameterBvehiclesBslotsBremainedB	nostalgiaBmarvelBkarenBdragonsBdemonsBprofitBpokerBcompositionsBbatBnobleBdepictedBdesperatelyBbrownsBwalterBtoxicBbarrelBreachesBrainyBpaleBdeadlyBzBtileB
indicationB
repetitionBlocateBhandheldBdisapointmentBdennisBaceBtonesBfareBwarmthB	energeticBwiringBheadedBenhanceBweaponBsuckerBjanB
guaranteedBstainBgoalsB1995BmissionsB	broadcastBbackedBpigBexplicitB
scientistsBclampBoddsBisraelBhighwayBprofileBexoticBbeingsB	respondedBtruthsBsixthBitthisBtonerBtrustedBthroatBmagnetBrocketBoccurBcomedicBvaryB	shouldersBjammedBdoomB
challengedBsendsBcredibleBbullB19thBtedB	mountainsB
enthusiasmBbowBpiratesBstumbledBinstructionalBorientedBinvolvesBfridgeB	intentionBpeelBforgiveB	disturbedBcontractBfreezingBensureBrepresentativeBfussBbrewingBcurseBsadnessBgutsBclichedB	exchangedBchaosBblondeBstaplesBsolelyBparadiseBlaundryBpacificBmundaneBextendBlukeBgarlicBduoBnervousB
motorcycleBenormousBmedievalBhawaiiBgloriousBtubesB	thrillersBswitchesBshiningBgatesBmurderedBavoidedB	fortunateBgentlyBlooselyBgearsBdrummingBstackBmangaBangstBdubbedBpioneerBkodakB
australianBuprightBplatformBmistakenBgrandmaBeliteBmoodyBengageBcdromBsnackBpossibilitiesBdripBcliffB3000BstoleBlesbianBwrenchB	realizingBscissorsBinvestigationBassignedBpaintsBhopefulBgroovesB	frequencyB	addictionB	intricateBdistinctBcomposedBbratzBarrangedBromeB	unpluggedBrockinBreadilyBinterpretationsBtranslationsBspacesBchefBtripleBsueBstevieBrepBretiredBhabitB	rereadingBairedBrecycledB85BpirateBpreviewsBglanceBchillingBwhinyBentriesBcandleBpossibilityBelasticBwasherBstairsBregardsBspecsBslapBdockBspeedsB	historianBbradBsacredB	partiallyB	immediateB	exquisiteBbdB
connectorsBrussiaBtrainerBpdaBdimB
stretchingBflowingBsandraBsabbathBnicholasBzipBlicenseBkennyBtoothB	sharpenerB	indicatesBdatabaseBcolourB	chemicalsB
variationsBcompositionB
vegetablesBunionBsettleBsecondlyBbenchBoccurredBdubBkayB
convolutedB1997BhabitsBfiredBeasiestBexpectationBbounceBtoreBswimmingBpouringBmatthewBfoulBhatredBbreatheB
artificialBroyBrioB	imitationBgumBfrozeB
documentedBchoreBmaintenanceBdukeBcenteredBtabBscrollBgripsBwidthBsafelyBrevolutionaryB	confirmedBarrogantBtomeBsocketBcaveatBbaitB	mechanicsBsooBlapBbonBsmithsBwidelyBthesisBseamBdiscoveringB	commentedBunwatchableBdelayB
populationBmentallyB	ignoranceBcrownBwinsBdisapointingBcivilizationBduetBrockyBgoryBemoBsuppliesBscreensB	motivatedBkickedBcmonBblatantBtivoBhazardB	dimensionBtolkienB	radioheadBhidingBfiB	economicsBborderBmeterBargueBbachBticketB	correctedBsolvingBharnessBarchitectureBamongstBconsequencesB
attractionB	nostalgicBfacialBcrimesB38B	stephanieBlidsBleonardBjudgingBidioticB	applianceBaiBmythsBcrushBchoirBnuclearBgallonB
encountersBdressedBannieBtuningBdistantBpaddedB
redemptionB	indicatorBfiguringBduckBjudyBcoulterBaweBtemptedBstagesBendureBworkbookBupcomingBportionsBskilletB	interestsBroundedBnelsonBfundamentalBshutsBpotentiallyBmoistureBfighterBdutchBahBarrivesBrepresentationB	obsessionB	franciscoBframesB	stretchedBposBnetflixBghostsBnavigateBbeneathBtennisBtasksB	collectedBversesBharrisonBgregBmagneticB	disbeliefBbuffyB
admittedlyBadhesiveBebookBstinkerB	invisibleBsaladBrossBcampyBpeacefulBcasioBdougBconsistencyBaloudBsentimentalBresidentBpreachyBcapsBzeppelinBpouchBpauseBhingeB	genuinelyBclickingB	separatedBparallelBsublimeBkrupsBresistBownsBfleasBdancerBdeafBcaloriesBtunerBspoonBshaftBmadnessB	catherineBvitalBsuitsBfloatingBdiscussionsBreliabilityBpipeBgothicBrecommendingB	audiencesBexcelentBclassyB
approachesBkittyBhikingB	editorialBscheduleBmeltBincidentBhelenBhardestBexpandedBconnectsBtimeiB
monotonousBjerseyBsoccerBoverdoneBbrieflyBdoubtsBcherryB
capabilityBdisappearedBbakerB	abandonedBunstableBenvelopeBdimeBagingBadjustmentsBwattsBgenderB
unbearableBknockedBcreatorBshirtsBcountsBnaziBcriticBmichaelsBlaysBfbiBdebateBfebruaryBspiralBlushBcoleBslayerBnoirB
toothbrushBrealmBmichelleBfleshB	cookbooksBboilingBbeleiveBvirusBnasBsnakeBshadesB	rewardingBpitifulBcatchingB8thB
continuousB700B	satelliteB	mythologyBdosentBweavesBstereotypicalBshakingBlightlyBsalsaBmultiplayerBbeatenBsensitivityBmanufactureB
contactingBseasonedB	referringB	religionsBlincolnBswimBkickingBwarrenBmorganBgibsonB	wellknownBvulgarBreverseB	removableBbooBblessingB
recommendsBflippingB
enchantingBmenusBgordonBbuggyBaccompanyingBvirginiaBnylonBfunctioningBpumpingBtypingBcontributionB
miniseriesBliberalsBillegalBdocB	viewpointBrelaxedBironicBquickerBjamieBgreedyBclearerBstapleBfavB	endearingBimoBheatedB	stupidityBoutlineBtendencyBconsBasiaB	relativesBcurveBweighBteBsleptBsimsBpeteB
hystericalBdynamicsB	cinematicBcapabilitiesBfewerBclubsBdraculaBsinatraB
traditionsBfreezerBsmashBpercentBmicroBrepairsB	pricelessBcopsBbrainsB	rereleaseBpitcherBoriginsB	departureBfraudBadoptedBtroubledBsiBforcingBteamsBbizkitBbelieverBtrainsBrpgBrunnerBministryBiconB5starBunderstandsBvitaminBrebelBmeasurementsBstiltedBherosBcooperBtremendouslyB
storylinesBreplayB	miserablyBflameBviceB	lyricallyBlightheartedBissuedBhatsBdiveBcoconutBpricingBnewbornB	alexanderB
songwriterBplaybackBoriginBcaBchiefBrechargeBhairsBgapsBtrapsBphaseBfatalBasapB	absolutlyByallBkoreanBintroducingBrecieveBoutfitBharmBgreasyBdifficultiesB
astoundingBlinkinBleverBfoldedBmonoB	spidermanBcopperBcitizenBadaptorBwovenBwavesBpickupBorganBlongestBgreatsBuncutBclunkyB	sacrificeBpitBorleansBscanningBsolarBdecidingBconsiderablyBscrewdriverBjustinBcrucialBcomparesBsatisfactoryBjerkBseldomBchampBsensesBintactB
assistanceBskinnyB	irritatedBcoolestBwatsonB	signatureBgrabsBatleastB
aggressiveB56BverticalBproductionsBmathematicsBfurBblendsBappliesBwackB	subwooferBroutinesBdisorderBbordersB	respectedBpropertyB
inadequateBseperateBsailorBchiBcamBalliBspiritsBshuffleBmuddyBmassesBcsBsuBholsterBgrammaticalBexposeBconsiderableBclimbBsoundtracksB	relationsBhangsBexamsBensembleBcontinuouslyBracesBbwBsidedB	employeesBconsiderationBwhereverBvirginB	therapistBquantityBcarlBunclearBrevisedB
captivatedBsignalsBsensualBhealB	addressedBgenieBcontroversialBconcentrateBtanB1984BremasteringBfanaticBknittingBfoilBmerchandiseBlogByummyBnationsBinvestedBcaveBroughlyB	precisionBmacbookBindiansBfirmlyBbunnyBencyclopediaBcowBsimpsonsBscenarioB
programmerBpoisonB	scarpettaBrelatesBglowBproneBmercyBclimbingBsurvivorBrhymeBinteractiveB
intentionsBscholarsBschemeBrockerB	reluctantBdisconnectedBchromeBhitlerB1996BspitBhitchBruralBfaxBbesideBfoolsBroadsBjesseBrestoredBmarketedB
ingredientBwoodyBhaloBshyB
gratuitousBwhimBpassageB	strongestBnurseBmommyBsuiteB	squirrelsBsighBpcsBbegunB
unfamiliarBsavageBreprintBfuBtutorialBtroublesBincBchasingBunfairBlawrenceBcomparisonsB	transportBjailB	diversityBresortBheartbreakingBgagB
disciplineBsciBperspectivesBfamilysBespB
compressorBcomicalBboosterBsurfacesBsoooooBmasteredBcynicalBsynopsisBmozartBarrangementB
enthusiastBdevelopsBbustBwokeBenteredBchicksBpsychoBmehB350BundoubtedlyBsaintBresidueBonedimensionalBlouBbiologyBmurrayBhisherBdancesBangelesBindividuallyBwaffleBsiliconeBflapButilityBpunBoxoBsourBremasterBratBhomemadeBplatinumBthompsonB
protectiveBpointingBneedleBmasterpiecesB	engineersBdonaldBtrashyBpushesBfleaBcatchesBscreamsBclaimingBnsyncBfriedBunfunnyBpissedBtempleBspainBpaysBfeministBvastlyBsupremeBolympusBemmaBdefinitionsBanxietyBwealthyBtrunkBslippingBpeanutBelderlyBsurfBbeliveBpoopBitifBfrogBdeleteBaccompaniedBthemiBmorrisonB	lightningBgigB
stepbystepBjakeBbrosBspinsBselfhelpBjuicerBbanksBrebateBmelissaBheritageBswallowBriderBretailerB	ludicrousBexcessBestaB	bluegrassBrottenBpropsBoddlyBleslieB	definatlyBsincereBrenderedBthiefBsymptomsBsumsB	formulaicBfluffyBaccentsBmuseumBaidsB	improvingBheadingB
containersBnozzleBjohnsBmoreoverBbioBmonitorsBromancesBmiseryBkungBsimplerBrubBkennedyBfoolishBbitesBcoolingBclientBassumesB	translateBsteamerB	sexualityBrugBmariaBegyptBmarilynB	discoversB	thicknessBreproductionBholdersBalphabetBabsBshowcaseBmysticalBmurdererBruggedBlifelessBhypedBhughBhumidityBcontactsBcolemanBseattleBhireB	copyrightBconsciousnessBchillsBmurphyBmickeyBinaneBexpressionsBexploredBsherlockBachievedBpartialBoverseasBjazzyBconfigurationBceramicBradiosBinventedBevansBspectrumBreunionBgrahamBdiceB
controlledBbumpsBvoltageBveteranBtunnelBrinseBbeeBalaskaBmallBeatenBcologneBmamaBloungeBcolumbiaB1990sBnoveltyBmusicalsBjonathanBcompilationsB	brazilianB	paintingsB	scenariosBdividedB	capturingB	placementBcompanysBchunksB
unfinishedBmp3sBclosureBresultedB	requiringBalternativesBstrainBsqlBscholarBillustrationBconfuseBbakeBapplesBunrealBrestaurantsBkeenBgrandfatherB	consumingBperoBcrackingBveinBheelBchainsBbillsB	deceivingBbiographiesBbackyardBjoinedBflukeB	disappearBcoloringBtraysBmbB	innocenceBformedBfestivalB	butterflyB	buildingsBboutBeternalBimplausibleBanatomyB	actressesBsaxBfluteBdotBcallerBvelvetBquantumB	profanityBnecklaceBmegBavoidingBadaptersBmeasuredBleafB
excellenceBeinsteinBcurlB	textbooksBrapidlyBbrakeBhoB	designersBbuiltinBspillB	speciallyBsheepB10000BwateredBtrailersB	processesBremakesBoweBmateBflushB	excellantBbrazilBassistBandrewsBretroB	plausibleB	pedometerBfranklinB	footnotesBdancersB	streamingB
remarkablyB
encouragedBdownsBdigestBjointsBbeckBabsorbBsmellingB
comprehendBcluelessB
windshieldBpreBoldestBclashBbraceletBmcBguiltBmathematicalB
illustrateBenteringB
continuityBwhitneyB	scatteredBmatsB	watchableB	strangelyBsavingsB
pageturnerB110BinstrumentalsBsovietBmansonBspongeBsplendidBsixtiesBdickensBcombBchewingBwreckBspellsBwagonBumbrellaBmasonBhrsB	eliminateBblockbusterBsteeringBkerryBheightsBtrivialB
backstreetBvitaminsBstealingBsmallestBmasBsunnyBstrawBplumBitbutBcarbonByearoldBglobeBoneiBironyB
encouragesBtravestyBswissBpicBnotionBrebootBrandyBgeB	composersBinvasionBfryBdeppBabusiveBstylusBfoldingBtanksBrefillsBhiredBelectricityB33BspiderB
professionBounceBaimB	stretchesBmargaretBmaB	gatheringBscriptsBknockoffBbegBinsipidBrestoreBappearancesBtoddB	shatteredBrealizesBmagnetsBincorrectlyBexaminationBcaliberB
portrayingBcannedBbarkingBalbertBwillisB	vibrationBbettyBwattBlargestBdopeBcanisterB510BweighsBoliverB
listenableBivBcrateBcompatibilityBsearsBlibroBcloudB	graduallyBfixingBcoupledBrivalBrimByarnBwifiBgraderBflourBpalBdtsBvillainsBrangingBitdBbrighterBslaveryBfogBduneB	dinosaursBcrushedBpeeBliftingBdestinyBconfirmBblairBvirtualBventureBturboB	conflictsBspoilerBshootsBprotagonistsBpotatoBitandB	inclusionBfractionBcolinBboB	territoryBstorytellerBmuteB	dispenserB	anxiouslyB	victorianBmoBlinersBglossyBdemonBdefineBabsenceB58BpotatoesBpodBjoelBjacksBbacksBwierdBumBpasteBtolerateBimhoBhendrixBevolvedBthanksgivingBrecoverBmmBbridgesBtylerBbeltsBaffectsBwhistleBweakerBsubstandardBoilyBhornsBdocumentariesBtenseBspringsBhardwoodBobsoleteBmankindBliningBlaptopsB	judgementBfeverBdevoidB29BsettledB	deceptionBbarkBgroundbreakingBcarrieBabstractBwesternsB	resistantBmodesB	masteringB	inventiveBblakeB
vegetarianBphdBinaccuraciesBdeathsB	centuriesBwtfBtackyB	reactionsBexceededBvinceBsurveyBrobinsonBnurseryBzuneBthrashBmeaningsB	competentBarnoldB42B
wildernessBpatchesBjerkyBciaBwivesBmoneysBelevenBdoaBcreekBsimpsonBbuffsBthBlambBsyndromeBmormonBhowtoB	gardeningBunsureBrandBindianaBaspiringBsurfingB	sincerelyBradicalBploddingBliftedBearnBsealsBhopelessBemilyBcapitalBadministrationBacneBsupplementsBhebrewBhardbackB
bestsellerBwellmadeBelevatorB
applicableBmorrisBglaringBassuredB1994BwelliB
cinderellaBsurgeBrogersBhingesBworkmanshipBspookyBrelatingBnotableBbakedBflewBenvironmentalBbeardBthreatBmarthaBhardyB
destroyingBcentersBwakingBrollersBnerveBmoralsBhondaBburtonBventB
mentioningBgamerBwweBtownsBshirleyBruiningB
historiansBdiggingBvoidBvinciBunsatisfyingBmovieiBflairB
developersBdeerBanticsBwhitesBpuppetsBwadeBtinnyBoccursBminorityB
adolescentBpgBmobBattractBaircraftBwolvesB	organizerBindoorsBcritiqueB	awarenessB	reasoningBoliveBlpsBkirkBdownfallBcoherentBmeasuresBdeclineB	appallingB	stitchingBrememberingB	insuranceBhoustonBfuseBslipsBgrandparentsBellenBeclecticB	advertiseBcelineByeaBpreventsBoutsBcleanupBcircusBblacksB1500BstunkBrestartBrailBmondayB
derivativeBjediBinsertsB5000BworkersBrustedBlinearBshieldBsanderBelmoBcrossedBabridgedBunimaginativeBincreasinglyBastonishingBwillieBcorruptB	generatedBdefendBninjaBfeatBstirB
structuresB	reinstallBdecB40sBscratchyB
paranormalB	instancesBweberBremovalBlotrBclaspBwhilstBpeiceBnudeBdenyBtabletBprofessionallyBherbsBclampsBattendedBacdcBslippedBjvcBhighsBcloneBpluggingBjawsBpeelingBheroicBdadsBcampbellBbudBoldfashionedBapproxBadventurousBtarotBoregonBcareersBoutletsBbrowsingB
authorizedBarguablyBmanualsBhockeyBdallasBcomBcareyBskimmingBprogressionBcostcoBabsorbedB
formattingBdolbyBdependBassureBapBslippersB
recomendedB
networkingBbicycleBwashesBponyB	celebrityBtrumpetBpermanentlyBoilsBmiraclesBaudibleBwindsB
conversionB1990BsailingBkaraokeBjaBboilBabsentBtroubleshootingBsimBsuperblyBsufficeBozzyBgradersBwrappingBtopnotchB
structuredBphilipBlineupBcompassBatomicBappalledBvendorsB	offeringsBsleevesBfinanceBdistinctiveB	completlyBscaresBripsBnervesBglennBbaconB30sBsoyBmickBheadsetsBbackgroundsBchewedBcheatBblowerBforumBslipperyBreedBpittBlimitationsBcringeBtiltBmultiBdemonstrateBcitizensB
assignmentBmintBbogusB	promotionBoverlookBoracleBinfamousBharborBfloatBcakesBswivelB
republicanBflexibilityBdepictsB46BselfindulgentBoutrightBhollyBgladlyBretardedBrashBislandsBfaultsBcrowBawaitedBtriviaB
journalistBcontinuationBuninspiringBswingingBfistBdetectorBmerchantBcalculusBwandB
processingB
adequatelyBmosB
legitimateB
inevitableBshredBpondBpillowsB	variationB
positivelyBbackdropBnearbyBbookitB	attitudesB	absorbingBtraveledBsubplotsBpovertyBnorelcoBcurtisBcompetitiveBchippedB31BwitchesBcozyBbritainBbowieBpianistBpainsB
nightmaresBmanagersBguessedBdefaultBthunderBfortyBcrashingBabbeyBsucceedsB	seventiesBsatanBratsBquartetB
guidelinesBfaveBsodaBouchBhurtingBhungerBclippersBexcelBthisiB	reservoirBdefeatBwoB	strangersBseventhB
sennheiserBrewriteBpoppyBhobbyBreliesB
registeredBnatalieBhummingBentiretyBcraigBclaptonBsleeperB	preschoolBmeritsBinteractBfiberB13thBachievementBhybridBsnapsBoleBjealousB	inabilityBavrilBvainBtangledBmafiaBjarsB	coworkersBchanBtidbitsBskimmedBoralBmegaBhtmlBchoppedBriffBmirrorsBlectureBeightiesBbashingBinsanityBcommandsBchopBalgebraByepBunsatisfiedBsaferBrockersBpinchBpampersBdianeBverbalBtracyBsprayedBmailedBinstrumentationBdonnaBdiamondsBweaknessBphoenixB
overthetopBcostlyB
accountingBwrightBporterBgrungeBexclusivelyBethicsBdemandsBcarlosBberryBreallifeBnicoleBipodsBdriesBcontrollersBsuckingBrewardBpsychicBconfessBclinicalBrelationBmoralityBmiamiB10thB
flashbacksBstunnedBfittedBstimulatingBdooB	beethovenBadobeBstingB
filmmakersB180BmaturityBgruesomeBgirlfriendsBgabrielBcomebackBchatB
unansweredBqueensBcopyingBcoloradoBappealsBlentBbundleB	strengthsBsharonBqBpartlyBdefectsB	combiningBvictorBorginalBgoddessBblendingBweeBprovocativeBfundamentalsBforkBbanalBsesameBsaraBkitsBkathyBdestinedBalteredBlynchB
identifiedBbendingBarcadeBsketchesBracialBedgyB
commitmentBwhineB	trademarkBrotationBposeBmisleadB
increasingBimprovementsBcloggedBcelebrationBantsBsymbolsBslipknotB	showcasesBmarketsBsunshineBspB43B
percussionBmistBanchorB900BvictoryBslasherBrompBplanesBknowledgeableBkeurigBrockedBmudBinclinedBbeholdBarenaBhannibalBflamesBdraftBrefrigeratorBegyptianBcasingBalphaBtransparentBsnoopBshrinkBkaneBinformBdivaBpulseBnokiaB
expirationBantiBstaringBrotateBhorrorsBdrearyBunpredictableBstrokesBshooterBpigsBinteractionsBfreakingBskaBpostsBfailuresBcoarseBwellsBvoltB	preachingBcubesBclownB
operationsBcommentariesBcabinBbrittleBveggiesBuhBtrucksBpilotsBconcertoBcharacteristicsBstealsB	reputableB	preciselyBduhBpettyBpdfBlustBhulkBformalBdraggingB
travellingBpailBelephantBburstBstockingBskilledB	projectorBaaronB	frontlineBagentsBvincentBoverwhelmedBfuriousBashesB
protectingBflashingBaquariumBamandaBloopsBgatherB
decoratingBclimateBattendBarrayBsmarterBprayersBbeggingBsilkBralphBcollaborationBalleyB
terrifyingBparksBpamphletBhanksB	executiveBdrillsB	transfersBstainedBmonkBineffectiveBgriffinBdestinationBdamnedBtimexBsimilaritiesBsharpenBsallyBneatlyBlennonBembraceBdisgustBdeterminationBuntillBtraceB	headachesBwheatBsaintsB
proceduresBmopBlloydBmitchellBcommitBchampionBbristlesBbasesBscannedBrantBprogrammersBhawkBfrancisBcurlyBallergicBprogBfuneralBaaaByellingBrangerBquotedB	diagnosedBruthBhesheBcollapseB	certifiedBvisitsBheartedBgamecubeBatmosphericBstoringBquiltBflippedBfactorsBalarmsBrobbinsBdressingBcrossingBarchBwarfareBtransformationB999BvonB	reportingBpopperBinvolveBhuntersBaffairsBwarriorsBstemB	promotingBpastorBloyaltyBglutenB
enterpriseBdescentBcreatorsBsamsBloanedBipadB
complementBbuddhismB	allergiesBsockBmuslimBdesiresBanticipatingB
orchestralBmodestBinfluentialBethnicBquickenBpythonBfightersBemperorBdepthsBcheatingBnormanB
incoherentBfeastB	warehouseB	turntableBsubtitleBmeantimeBluvBhmmmBenthusiasticBcellsBnuviBlendB	convertedBbearingBattByoungestBindependenceB	healthierBgooBgeorgiaBshackB
punishmentBincomeBeroticaBcliveB
renditionsB	reductionBpursuitBnipplesBmemorexBeasterB	superstarB
retirementBiqBinterviewedBchoosesBtenorB	tastelessBghettoB	converterB
contributeB	symbolismB
relaxationBpencilsBlibertyBgangstaBbannedBwhistlesBrigidBinstructorsBhissBhilaryBcompeteBlynnB	developerBcheerBntB	misguidedBexperimentsBearlB
dependableBmerryB	godfatherBvanityBstartersBsoilBdreamingBprequelBpeppersBdramaticallyBrapidBignoresB	hitchcockBcubanBcontestBchopsBshredderBrobotsB	necessityBlowesBgingerB
comfortingBanthemBstoolBsandlerBpumpsBpoetsBboxingBbendsBsurrealBowenBoopsBhideousBclaireBbitingBunlockB	principleBmdB	favorableBchalkB
sunglassesBsigningBmemoirsBinconvenientB	upgradingBscottishBpublicationsBellaBchronicBbbBtrailsBstrikingBarrowBwarningsBsupriseB	overhypedBmarathonB	carpenterB	ambitiousBtunedBfartherBdvdrB
deliveringBwaryB
surroundedBhankB	elaborateBcharacterizationsBspicesBslicerBgothBbothersBwackyBlyricB	historiesBfloodBelectronicaBdivisionBtearingBsteppedB
enthralledBdoraBdanielleB	communistB	succeededBmarkersBjargonBhubbyBddBnetworksBlaunchBgimmickB
farfetchedBdysfunctionalBriversBremotesBincomprehensibleBdomesticBciscoBopportunitiesBlinkedBfederalBattachesBthrillsBreliveBpayedBmesmerizingBlutherB	evidentlyBdinosaurBcyclesB	alongsideBadoptionBxmenB
treatmentsBsignificanceB	procedureB
highschoolBexitB	evocativeBacquiredBworriesBdustyBdosBterminologyBmaintainingBloafB	frameworkBawefulB	similarlyBshamefulBnutshellBmonthlyBdentistBregretsBexplorerB
brightnessBbourneBpetersBmountsBknobsBgoshB	consciousBcoinBcharityBsquirrelBrappingBinflatedB
exceptionsBcousinsBtoriBretireBquieterB
navigationB	mccartneyBtwistingB	tolerableBsleepsBoverproducedBincorporateBdownwardB
appliancesBtorturedBpredictBgossipBcrookedBagainiBsoakBravingBdumpedBdevilsBcrawlBcondescendingBraisesBprotectsBpreyBdreBdetectBclintBssBpanicBteddyBsamplingBpitchedB	meanwhileBfirewireB1993BmanagingBcarolinaBcameronBcerealBapprovedB1980B1930sBsprayerBwerewolfBrifleB
projectionB	paramountBinvestigateBexcerptsBcopeB	condensedB
beneficialB
unlikeableB
thermostatBshB
reflectiveBorganizeBoptedBbleedB
acceptanceBtowersBscrubBrevelationsBongoingBnapBlovableBknightsBcoatedBrecalledBjeremyBhokeyBarizonaBreaganBpolarBdisappointsBbuzzingBweaveB	retellingB
horrifyingB	wanderingB	negativesBjoyceBfreelyB	formattedBcreedBconservativesBcabinetsB	accompanyBunfoldsBlgBglitchesBformatsBbeadsB	audiobookB68BphonyBisolatedBfianceBcarbBsmilingBskimBneutralB
melancholyB
journalismBatticBpronunciationBfxBcubaBaventBnormBimpliesBillustratesBheroinesBformulasBexpectsBdaringB
conscienceBtshirtBbeesBpatioBoreillyBheelsBdonateB1992BunconvincingB	sophomoreBparanoidBnazisBadaptedBunsafeB
unreleasedBjoeyB	demandingBbuckleBvividlyBveganBthermalB
suspiciousBskypeBcompiledBunlistenableBsiblingsB	expertiseBsorrowBmugsB9thB	stabilityBspoofBshakesBpouredBmisledBmarleyBduBdismalBchangerBbarneyBrobustBunderstatementBswingsBsoakedBranchBliarBlengthsBcreditedBarabicBtribeBthermosBsanityBrakeBpenguinBoffenseB	manhattanBmagBleesBjillBenlightenedBtimetheBrustyBremarksBjeepBhobbitBeagleBdireBohioB	dishonestBartistryBwrittingB	subscribeBreactB	processedBnamelyB
essentialsBbreastfeedingBbananaB	admissionBflashesB	criterionBbreakerBbranchBaccusedBunawareBmatthewsBgutBelectionBporchB
moderatelyBkansasBgenerateBcontributionsBcandlesBrubbingBoutiBofficersBfreshmanB	fantasiesBextractBdemonstratedBcircularBcheersBwafflesBmacsBdefeatsBcombinationsBbleedingBstinkyBselfabsorbedBrepublicBorganizationsBconcentrationBmessingBititsBeraseB
disconnectB	survivorsB
perceptionBlizBspouseBgratingBfreakinBextensivelyBearpieceBconjunctionBcafeBassumptionsBpredecessorBlosersBempathyBsteakBremedyBliedBsturdierB
scripturesBgamersB	designingBchristieBwintersBwildlyBvbBreporterBfyiBforumsB	acceptingBsynthBpunctuationBnonsensicalBdespairBturtleBtabletsBjayzBignoringBgadgetsB	eccentricBshoutBmarshallBheavensB	unrelatedBsnippetsBnippleBmollyBfrictionB	excelenteB	endlesslyBectB	duplicateBdevotionBbeepBabcBpuppetBhrBhopkinsBhartBabysmalB	vocalistsB	uninstallB
preferenceB	metaphorsBlandsBdisBdiningBdestroysBsantanaBoxfordBmarieBhongBdeeBcontrollingBbustedB20sB1989BvoyageBtransferredBsweptBspikeBmyersBgrindsBgangsterB
disserviceB	survivingB	sarcasticBhootBfruitsBfixesBdisabledBcanceledBwarrantBsandalsB	disguisedB	annoyanceBstitchesBductBcurtainBtreatingB	responsesBmotivationsBmakitaBgiantsB1991BgeeBbummedBbuddiesB	appearingBtruthfulBshoreB	remainderBpostersB	implementBemptorB	breakdownBscotlandBrubyB	resemblesBdiB
dedicationBcrichtonB
beginningsBmasteryBmarginalBmaddenBinsomniaBcleverlyBcatcherBbeamB1080pBtighterBscooterB	primitiveBlecturesB	kidnappedBexteriorBaddictBworkerBstrokeBsimultaneouslyBscalesBouncesBhottestB
collectiveBcobyBawaitBspicyBmidstBcameoBwichBstripesBmonkeysBdetractBboggedB	arthritisBarcB78B
underwaterB
restockingBreorderB
meanderingBleashBhatingBharveyBenlightenmentB
completingBriotB	cigaretteBabBscoobyBpaBhayBgoodiBbetaBsterlingBsmootherBredeemBmotivesB
integratedBdivingBunbiasedBsparseBprophecyBpearlsBkindergartenBexamineB	enchantedB	digitallyBbracketsBadmittedBaboundBtransportedB
progressesB
pretendingBlinedB
sharpeningBquinnB
propertiesBcannonBrickyBrealiseBgrosslyBeerieB
distractedBultravioletBsweepingBsweeperBpolesB	overblownBoperatedBbetrayalBbarnesBww2B	testimonyBsmashingB
photographBnuancesBgasketB	fireplaceBbridgetB	smoothiesBplanetsBmoisturizerBfreddyBcanvasB	admirableBshopsBpostingBccBaxeB	worldwideBspelledBlastlyBbatterB	neglectedBbutlerBavBvinegarBunfoldBtxBrationalBquietlyBmaggieBworkshopBslangBpliersB
phenomenonBinspiresBfilthBdebtBstuartBrotatingBilBhoffmanBdipBdiariesBcrockBurineBtriangleBtackleB	salvationBmassacreBhugelyBgriddleBauthenticityBslicesBrenaissanceBnearestB	deservingBupstairsBtimothyBpoundingBloosenBabruptBwareBmailingB
boundariesBblendedBacknowledgeBfemalesBcomedianBamberB
yourselvesBwrapsBlistingsBgalB
engineeredBwesBprobeBchargersBgeekBatlanticBalittleBsyrupBskitsBrebeccaBmelodramaticBlambsB	terroristBrestorationBmarcBflavoredBblissBtouristBtechnologiesBrequirementB	qualifiedBplasmaBpartnersBsuspendBremixedB	obstaclesBnotablyBgenBberlinBapplaudBusefullBstampBsmashedBradarBmisunderstoodB	inventionBinsistBgalaxyBtransmissionBshutterBrowlingB
professorsBdyeBdvrB	clearanceB1985BworkingsB	prominentBparadeBgoodwillBevaBenclosedBembarrassmentB	treasuresBsweepBpoliticiansB
corruptionB	commanderBretainBpoliciesBinputsBattorneyBadaptBstarkBpierceBmetaphorBimplementationBeltonBcontributedBclocksBvillianBverifyBupdatingB	sickeningBremBplantronicsBleoB	equationsBcoworkerBtrendyBriddledBthirteenBrewindBcalmingBwardBlifelongBlicksB	horrifiedBclanBbuffaloB	slapstickBmoronBineptB
economicalBanyhowBtravisB	sensationBpanelsBdreckBappetiteBresumeBgregoryBdaleBampleB1988BwiccaBunfortunatlyB
progressedB
presidentsBmodifiedBloneBlintBunimpressedBtheologicalBfrankenBdysonBdumbestBbibliographyB41BzooB
supportiveBlodgeBglossaryB
futuristicB	detailingBbeverlyBunavailableBplottingBjoBgritB	grandkidsBconcludeB1200BsplashB
rereleasedBrecycleB	milleniumBmartinsB
guitaristsBdamagingB	criminalsBcaptionsBcamperB
assessmentBsacdB	followersBescapesBerBbratBagencyBrespectsBpsychedelicB
programmedBplushBdistributionB
curriculumBshortcomingsBroutersBqualifyB
binocularsB
stereotypeBroastBgrishamsBdugBbedsBwretchedBwallaceB	vegetableB	downloadsBchiliBattackedB125BtickBspillsBseeksB	milwaukeeBhomageBvisionsBuvBsemesterBexcusesB	estimatedBrevolvesBreflectionsBpairedBconanBbleakBmalesBlegoBimmortalBassociationBpineBforgivenessB	caribbeanBuniformB	temporaryBmaturedB	jeffersonB
infectiousBdupedBtimelineBstirringBharoldBenduredBboogieBsteppingB
selftitledBrootingB
rediculousBnellyBmechanicBjammingBeducateB
categoriesB	remingtonBinvolvementBhahaBweedBsexuallyBprivacyBprestoBencouragementBdistractionBclosesB4000BweavingBsensationalBsecuredBintentionallyB
devotionalBbetteBplayfulBbashBvomitBtheoreticalBswedishBslavesBsensibleBreignB
pedestrianBliBheavenlyBchopperBbuildupB
witchcraftBunratedB	superheroBsecularBplotlineBjawBfadingBworkiB	withstandBtexturesBtehBsunlightBlongingB
instructedB	crossoverBcarseatB	behaviorsBabruptlyBsteepBrattleBrangesBpompousBethernetBcorkBtraitsBquestioningBmooresB	hardshipsBdentBdelveB52BxmlBvaguelyBroundsB	realitiesBadmiredBwakesBnovaBipBakinBtravelerBslamBpursueBjimiB	conceivedBappBregionsBmontyBmoistBmandyB	heartbeatBemployeeBcpuBashleyBveteransBtwainB
sophomoricB
manipulateBcoilBpredatorBjoviBhandsetsBcurlingBbehaveBamusedB1015B
unabridgedB
horizontalBcontroversyB	unhelpfulBtallerB
ironicallyBgreatiBdomainBamazeBadmitsBcustomsBcohesiveBswearingBmasterfullyBwaitsBspeedyBreevesBpumpedBirBeastwoodBmichiganBtinaBstuntsB	longevityB
inspectionBimacBfeminineBdentedBwrinklesBwolfeBtiBpancakesBoldiesBnavalBmejorBfestBextremlyBcrueltyBbrooklynB1970BvaryingBsinsBrailsBprefaceBprayingBlagBhighlightedBbangingByikesBthaiB
subjectiveBpmBcompressionBagathaBstylingBsequalB	senselessBpuppiesBprovingB	mentalityB
mediocrityBenthusiastsBdelayedBsandwichBrvBreceivesBmoldedBbroomB1987BvoodooBsteamingB	hurricaneBguidedB
definetelyBclicksBcasinoB	tutorialsBsammyBgardensBfiddleBnooneBhypnoticBgravityBfuryB
exercisingBblogBatlantaBtransformedBsamuraiBrodsBmidwayBdoveBtossingB	publicityBmovietheB	generatorBfadesBarmorBwokB
weaknessesBsplitterBodysseyBnovelistB	misplacedB
expositionBdangersBtomatoesBskullBsaltyBrubenBrhinoBnestB	justifiedB35mmBstrayBsolidlyBpinnacleBomittedBbonnieBwobblyBproblematicBunderstatedBslowedBrevivalB
profoundlyB
hesitationB	associateBvestBvapidBstanBpopeBlordsBgermansB
discomfortBadoredB
misfortuneBkarateBgainingBfarceBdismayBdaylightBappropriatelyBwastesBvileBtheftBresembleBhangerBenginesBcraftsmanshipBufoBsymbolBrapedB
overweightB	katherineBellisBconsequentlyB
technicianBsteamyBrejectedBjudeBcorpsBcolumnB
assortmentBsuspectsBracksBmuffledBtappingBknitB
assumptionBactivateB	wholesomeBwebcamBpoohBoutfitsBjacksonsBheartilyBeaglesBbilledBuptodateBsunsetBchainsawBthatiBstorysBstevensBpersonaBonetheBdarcyBcommonlyB44BundoneBpaganBislamicBclipperB	celebrateBtroyB
terroristsB
presumablyBpremierBpeekBoliviaBchockBantiqueB	addictingBsonysBnadaBhearsB	geographyBfpsBantBtoyotaBtaxesB	specifiedBscalpB	relevanceBlawyersBchefsBbuilderB	attachingBankleBalterBosterBmobyBmisrepresentedBmeasurementB
filmmakingBdelonghiBbouncingBamazesBtoniBsinisterBpromotedBoverpoweringBlindsayBboiledBassaultB	terrorismBmiaBautismB72BricherBrhetoricB
optimisticBobtainedBjoystickBtrimmingB	recyclingB	recipientBnutritionalBmeetingsBedgarBcompartmentsBtellerBoutlinesBintakeBinfiniteBdubbingBdoomedB57B182B	underwearBoutingBmgmBmacroB	honeywellBguruBgaloreBbreastsBbluntB1979BtreoBsortaBpaulsBparkingBmuddledB
medicationBgameboyBcriesB	comforterBbethBunusedBtouringB	submarineBsightsBmoodsBgrammyBfreddieBintelBharvestBfinishesBcohenBbondsBwristsB	transformBmummyBmaineBjennyBhannahB	gentlemanBfascinationBdemiseBtroopsBmodifyBmindsetBlampsBharmfulB	explosionBedwardsBcertificationB	butcheredBtameBotBministerB
manuscriptBhikeBenableBdenverBblurbBvariableBnoticingBdignityBcoatsBindispensableBhomelessBdamonB
borderlineBviciousBspirituallyBsimmonsB	remembersBnannyBgrateBexposingBdistinguishBtrendsBtiringBsummersB
standpointB	reflectedBoccupiedBlanternBcramBchurchesB
strawberryBsleepyBsharperBprefersBnumetalBfulfillBdefinesB	dashboardB
courageousBcompassionateBcautiousBversatilityBraymondBptBmarinesBintellectuallyBgiverBeternityB	calphalonBafghanistanB	aerosmithB37BsoughtBmercuryB	grandsonsBfebBverizonBstitchBrisksB	amplifierBsummedBspeculationBcoinsBshelterBsegaB	nominatedB
geographicBcuttersB	syntheticBswordsBsavvyBnarratedBdifferB	catholicsB	believersB2xBproductiBivyB	guidebookBearliestBdrillingB	tightenedBrelievedBelbowBcrystalsBswBshipperB	selectingBpodsBgrimBfiresB	democracyB	considersB	attendingBwizardsBuptempoBunsatisfactoryBtemperaturesBlandingBimprovesBgoinB
favouritesBexhaustBwritenB
suspensionBsnoozeBpassableBironsBhappendBgourmetB	dreamcastB	dialoguesBawfullyBaliBkoreaBharpB	catalogueBbarnB
accustomedBworryingBwhipBjunkieBfinerBclarkeB
blackberryBaviationBverbatimBritualBimpressionsBhughesBenduringB	christineBarabBaptBabortionBwholeheartedlyB	toleranceBomegaBlabsB
indicatingBeurekaB	engrossedB	disregardB
correctionBconveysBbopBbinderB18thBpathsBhotelsBgilbertBboatsBstoogesBslappedBromeoBlevisBironingBdorothyByamahaBshakyBrefinedBoakBnuffBjudgmentB	criticizeBcloudsBclickedBthemtheBmortalBdrippingBcherishBslrBridersBnewbieBlandedBjudithB
explosionsBcurlsBcuffB	possessedBphrasingBmarkerBdistributorB1986BxlBwaltBtissueB
terminatorBtagsBsethBrisesB	residentsBremovesBpunchesBouttaBmuslimsB
motivatingBmorbidB
imaginableBgogglesBfryingBfilthyBfetchedBfairnessBdripsBbattlefieldBalltheBagonyBundergraduateBticketsBspiritedBrobbedB
improbableBhomosexualityBdetachedBcorpseBchunkBsewnBidentifyingBevolveBdrawersBdotsBunseenBsyntaxB
preorderedBmoronsBenthrallingBclearedBchoppingBbackwardBaforementionedB1940sBrepetitiousBporkBexposesBdangBcoastersBcheekBspoilersBinconvenienceBglossBdressesBcostingBsufficientlyBshrekBjewelsBincompatibleBbuddhistBannualBtomatoBpendantB	oversizedBhigginsBfloppyBcropBbrasB	assistantB
assemblingBashB97BreynoldsBpraisedBlionsBlaurieBitchyBgbaBangelaB2dB130B	whimsicalBmotivationalBjkBhawaiianBfundB
conferenceBclarifyBbulletsBtargetedBstatsBsewBrelyingBrecognizableBpeersBmomentumBdisneysBcanalBtransitionsB	subjectedB	reinforceB
referencedBproviderBloosingBillusionB	forbiddenBdriftBcraftsBblurBzippersBsitcomB
simplifiedBmisinformationBcrunchyBchevyBcarpetsBbrushedBbbqBatlantisBwigglesB	spotlightB	principalBpipesB	notoriousBnicksB	interpretBhillaryBedenBapproachingBtokyoBimmenseBdremelBdampBconfessionsBvictoriaBsamplerBrewardedBopusBguardsB
forewarnedBdubiousBbloatedB	awakeningBweezerBtubingBtrashedBtraderBslantBshadyB
productiveBniftyBirresponsibleB	abundanceBabbaBspecificationsBonionBobservationBmarvinB	conductorBtaiBsuburbanBgoldbergBbumperBbookthisB
articulateB1969BwbB	unlimitedBdentalBcongratulationsB
vulnerableBsubtletyBprisonerBpacB	fulfilledBcapeBarmedB2pacBsnacksBmetheB
displayingBdeadlineBwelltheB	treadmillBpromotesBnbaBmontanaBisbnBexaggeratedBdreamyBchinB	melodramaBchronologicalB96BunnecessarilyBshiftsB
responsiveB
eliminatedB
discourageB	agreementByayBsubmitBspilledBmoduleBhipsBgoodkindBflashyBdrivewayB	alignmentB1978BwhollyBtraumaBsprayingBgroovyBcowboysBtropicalBsustainBsmilesBsmellyB
separationBpalmerBgradesBfastestB	upsettingBtorqueBsubplotBreliablyBregistryBhuggiesBfundsBdiegoB
colleaguesBtransformersB	specificsBrichlyBlopezBfolderBexcellentlyBcomprehensionBcoincidenceBupiBstocksBrothBrevisitBplayableBmadisonBinjuredBdebrisBbissellBstudBslicedBproceedBfoBextenderBescapedB	enclosureBbrushingB	armstrongBtilesB
talentlessBshawnBselfcenteredBfrankensteinBcurvedBassetBabandonBsandyBsamuelBribbonBprophetBpropBgarthBbittersweetBbecasueByogurtBtupacBtodoBsigmaBsidewaysBjuryBinterestinglyBglitchBchuckleBblanksBvisorB	subtitledBnailerBwiperB	portraitsBnickelBmccarthyB	mandatoryBharvardBdetroitBconvenientlyBcfB	blatantlyB	afterwardB2500BjuicyBhallmarkBdeliberatelyB
compressedBrespectableB	isolationBgreeceBfeelgoodBdreadB
classifiedBseptBpsycheBcorporationBcoldplayB54BstrandedB
officiallyBjoshuaBinstallsBgroundedB	conductedByouiBpumpkinsBpg13BpegsBonesidedBmillsBhunkB	establishB67BrabbitsBmayhemBcharcoalB	astrologyBaromaBrubbedBpetersonBmasksBgradBalfredBtuckBspillingBoasisBluxuryB	librariesBbluesyBbloomBliterateBinsultedBfeesBbryanBnotifiedBcollectsBchasesBbellaBwinnersBtargetsBmarredBjumboBhmmBherbBestimateB	corruptedBbillieBandreaBwuBunidenBtangoBpassiveBjoiningBgooseBfidelityBfavourBazB
audiophileBsaddleB
repertoireBfrostBdoctrineB	configureByardsBwhisperB
hopelesslyB
homosexualBheftyB	expressesBenvyBcuresBwhoveBscrewingBretractableBirvingB	hemingwayBhatefulBduffBlucidBjoysBdesperationB
annoyinglyB	additionsBwipedBwastBtyingB	strategicBspoonsB	shamelessBresemblanceBoffendB
consultantBchokingB
biologicalBslingBsandingBorthodoxBiconsBdefinateBcordedB	alcoholicBwarpBstubbornBstreaksBsalmonBremoverBquartersBproceedsBplightB
permissionBherbalB	expandingBdestructiveB	rightwingBrazrBpristineBmetallicB	inspectorBbsidesBblanketsBzeldaBthouBsixteenBrichardsBmoneyiB	maintainsBjillianBgambleBgagsBfreaksBpistolBmannersBinsistedB	exclusiveBbraceBbookifBbabeBappreciatesB66B1982BsimiliarBrancidBprBloreBheatherB	explosiveBendersBdisorganizedBcheapoBunexpectedlyB	stupidestBpplBpointerB	passengerBmeltingBmashBcherBbombsB39BreloadBreliedBpuffBmarkingsBdixieBdeceivedBtreatiseBshakerBprospectiveBoptionalBoniBffBdviBdribbleBdollyBcommunicationsB	unlikableBsilkyBshuttingBnephewsB
helicopterBfireflyBdockingBconfirmationBcdiBcampsBrewardsBregardedB
irritationBesotericBdrunkenBwwfB
wonderfullBturbotaxBtideBtemplateB
suggestingBsinksBreadiBramonesBoffbeatB	injusticeBfreakyB
accidentlyBunixBslowsBrehashedBquartBhotterBgracoBejectBtuckerBsurroundingsBpoprockB
noticeablyBethicalBdecorB	arroganceBwellresearchedB	ramblingsBmanipulationB	lowbudgetBknockingBjournalsBhalenBforemostBcrimsonB
unplayableB	travelersBreservationBpresentationsBpistolsBmaidBkatieBinflateBghzBdodgeB	submittedBsaddenedBnflBimplicationsBcountedBbleachBagreesBwildlifeBverboseBmillionaireBintrospectiveBgoodiesBdumberBdonatedB
disclaimerBdeptB
cancellingBanalyzeB
wonderlandBtrebleBtooiBrailroad
??
Const_5Const*
_output_shapes	
:?N*
dtype0	*??
value??B??	?N"??                                                 	       
                                                                                                                                                                  !       "       #       $       %       &       '       (       )       *       +       ,       -       .       /       0       1       2       3       4       5       6       7       8       9       :       ;       <       =       >       ?       @       A       B       C       D       E       F       G       H       I       J       K       L       M       N       O       P       Q       R       S       T       U       V       W       X       Y       Z       [       \       ]       ^       _       `       a       b       c       d       e       f       g       h       i       j       k       l       m       n       o       p       q       r       s       t       u       v       w       x       y       z       {       |       }       ~              ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?                                                              	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?       	      	      	      	      	      	      	      	      	      		      
	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	       	      !	      "	      #	      $	      %	      &	      '	      (	      )	      *	      +	      ,	      -	      .	      /	      0	      1	      2	      3	      4	      5	      6	      7	      8	      9	      :	      ;	      <	      =	      >	      ?	      @	      A	      B	      C	      D	      E	      F	      G	      H	      I	      J	      K	      L	      M	      N	      O	      P	      Q	      R	      S	      T	      U	      V	      W	      X	      Y	      Z	      [	      \	      ]	      ^	      _	      `	      a	      b	      c	      d	      e	      f	      g	      h	      i	      j	      k	      l	      m	      n	      o	      p	      q	      r	      s	      t	      u	      v	      w	      x	      y	      z	      {	      |	      }	      ~	      	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	       
      
      
      
      
      
      
      
      
      	
      

      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
       
      !
      "
      #
      $
      %
      &
      '
      (
      )
      *
      +
      ,
      -
      .
      /
      0
      1
      2
      3
      4
      5
      6
      7
      8
      9
      :
      ;
      <
      =
      >
      ?
      @
      A
      B
      C
      D
      E
      F
      G
      H
      I
      J
      K
      L
      M
      N
      O
      P
      Q
      R
      S
      T
      U
      V
      W
      X
      Y
      Z
      [
      \
      ]
      ^
      _
      `
      a
      b
      c
      d
      e
      f
      g
      h
      i
      j
      k
      l
      m
      n
      o
      p
      q
      r
      s
      t
      u
      v
      w
      x
      y
      z
      {
      |
      }
      ~
      
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                                      	       
                                                                                                                                                                  !       "       #       $       %       &       '       (       )       *       +       ,       -       .       /       0       1       2       3       4       5       6       7       8       9       :       ;       <       =       >       ?       @       A       B       C       D       E       F       G       H       I       J       K       L       M       N       O       P       Q       R       S       T       U       V       W       X       Y       Z       [       \       ]       ^       _       `       a       b       c       d       e       f       g       h       i       j       k       l       m       n       o       p       q       r       s       t       u       v       w       x       y       z       {       |       }       ~              ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?        !      !      !      !      !      !      !      !      !      	!      
!      !      !      !      !      !      !      !      !      !      !      !      !      !      !      !      !      !      !      !      !      !       !      !!      "!      #!      $!      %!      &!      '!      (!      )!      *!      +!      ,!      -!      .!      /!      0!      1!      2!      3!      4!      5!      6!      7!      8!      9!      :!      ;!      <!      =!      >!      ?!      @!      A!      B!      C!      D!      E!      F!      G!      H!      I!      J!      K!      L!      M!      N!      O!      P!      Q!      R!      S!      T!      U!      V!      W!      X!      Y!      Z!      [!      \!      ]!      ^!      _!      `!      a!      b!      c!      d!      e!      f!      g!      h!      i!      j!      k!      l!      m!      n!      o!      p!      q!      r!      s!      t!      u!      v!      w!      x!      y!      z!      {!      |!      }!      ~!      !      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!       "      "      "      "      "      "      "      "      "      	"      
"      "      "      "      "      "      "      "      "      "      "      "      "      "      "      "      "      "      "      "      "      "       "      !"      ""      #"      $"      %"      &"      '"      ("      )"      *"      +"      ,"      -"      ."      /"      0"      1"      2"      3"      4"      5"      6"      7"      8"      9"      :"      ;"      <"      ="      >"      ?"      @"      A"      B"      C"      D"      E"      F"      G"      H"      I"      J"      K"      L"      M"      N"      O"      P"      Q"      R"      S"      T"      U"      V"      W"      X"      Y"      Z"      ["      \"      ]"      ^"      _"      `"      a"      b"      c"      d"      e"      f"      g"      h"      i"      j"      k"      l"      m"      n"      o"      p"      q"      r"      s"      t"      u"      v"      w"      x"      y"      z"      {"      |"      }"      ~"      "      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"       #      #      #      #      #      #      #      #      #      	#      
#      #      #      #      #      #      #      #      #      #      #      #      #      #      #      #      #      #      #      #      #      #       #      !#      "#      ##      $#      %#      &#      '#      (#      )#      *#      +#      ,#      -#      .#      /#      0#      1#      2#      3#      4#      5#      6#      7#      8#      9#      :#      ;#      <#      =#      >#      ?#      @#      A#      B#      C#      D#      E#      F#      G#      H#      I#      J#      K#      L#      M#      N#      O#      P#      Q#      R#      S#      T#      U#      V#      W#      X#      Y#      Z#      [#      \#      ]#      ^#      _#      `#      a#      b#      c#      d#      e#      f#      g#      h#      i#      j#      k#      l#      m#      n#      o#      p#      q#      r#      s#      t#      u#      v#      w#      x#      y#      z#      {#      |#      }#      ~#      #      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#       $      $      $      $      $      $      $      $      $      	$      
$      $      $      $      $      $      $      $      $      $      $      $      $      $      $      $      $      $      $      $      $      $       $      !$      "$      #$      $$      %$      &$      '$      ($      )$      *$      +$      ,$      -$      .$      /$      0$      1$      2$      3$      4$      5$      6$      7$      8$      9$      :$      ;$      <$      =$      >$      ?$      @$      A$      B$      C$      D$      E$      F$      G$      H$      I$      J$      K$      L$      M$      N$      O$      P$      Q$      R$      S$      T$      U$      V$      W$      X$      Y$      Z$      [$      \$      ]$      ^$      _$      `$      a$      b$      c$      d$      e$      f$      g$      h$      i$      j$      k$      l$      m$      n$      o$      p$      q$      r$      s$      t$      u$      v$      w$      x$      y$      z$      {$      |$      }$      ~$      $      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$       %      %      %      %      %      %      %      %      %      	%      
%      %      %      %      %      %      %      %      %      %      %      %      %      %      %      %      %      %      %      %      %      %       %      !%      "%      #%      $%      %%      &%      '%      (%      )%      *%      +%      ,%      -%      .%      /%      0%      1%      2%      3%      4%      5%      6%      7%      8%      9%      :%      ;%      <%      =%      >%      ?%      @%      A%      B%      C%      D%      E%      F%      G%      H%      I%      J%      K%      L%      M%      N%      O%      P%      Q%      R%      S%      T%      U%      V%      W%      X%      Y%      Z%      [%      \%      ]%      ^%      _%      `%      a%      b%      c%      d%      e%      f%      g%      h%      i%      j%      k%      l%      m%      n%      o%      p%      q%      r%      s%      t%      u%      v%      w%      x%      y%      z%      {%      |%      }%      ~%      %      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%       &      &      &      &      &      &      &      &      &      	&      
&      &      &      &      &      &      &      &      &      &      &      &      &      &      &      &      &      &      &      &      &      &       &      !&      "&      #&      $&      %&      &&      '&      (&      )&      *&      +&      ,&      -&      .&      /&      0&      1&      2&      3&      4&      5&      6&      7&      8&      9&      :&      ;&      <&      =&      >&      ?&      @&      A&      B&      C&      D&      E&      F&      G&      H&      I&      J&      K&      L&      M&      N&      O&      P&      Q&      R&      S&      T&      U&      V&      W&      X&      Y&      Z&      [&      \&      ]&      ^&      _&      `&      a&      b&      c&      d&      e&      f&      g&      h&      i&      j&      k&      l&      m&      n&      o&      p&      q&      r&      s&      t&      u&      v&      w&      x&      y&      z&      {&      |&      }&      ~&      &      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&       '      '      '      '      '      '      '      '      '      	'      
'      '      '      '      '      '      
?
StatefulPartitionedCallStatefulPartitionedCall
hash_tableConst_4Const_5*
Tin
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *%
f R
__inference_<lambda>_1816057
?
PartitionedCallPartitionedCall*	
Tin
 *
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *%
f R
__inference_<lambda>_1816062
8
NoOpNoOp^PartitionedCall^StatefulPartitionedCall
?
?MutableHashTable_lookup_table_export_values/LookupTableExportV2LookupTableExportV2MutableHashTable*
Tkeys0*
Tvalues0	*#
_class
loc:@MutableHashTable*
_output_shapes

::
?9
Const_6Const"/device:CPU:0*
_output_shapes
: *
dtype0*?9
value?9B?9 B?9
?
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
	optimizer
trainable_variables
regularization_losses
	variables
	keras_api
	
signatures
(

_index_lookup_layer
	keras_api
?
layer_with_weights-0
layer-0
layer-1
layer-2
layer-3
layer_with_weights-1
layer-4
layer-5
layer_with_weights-2
layer-6
	optimizer
trainable_variables
regularization_losses
	variables
	keras_api
R
trainable_variables
regularization_losses
	variables
	keras_api
 
#
0
1
2
3
 4
 
#
1
2
3
4
 5
?

!layers
"layer_regularization_losses
#metrics
$layer_metrics
%non_trainable_variables
trainable_variables
regularization_losses
	variables
 
3
&lookup_table
'token_counts
(	keras_api
 
b

embeddings
)trainable_variables
*regularization_losses
+	variables
,	keras_api
R
-trainable_variables
.regularization_losses
/	variables
0	keras_api
R
1trainable_variables
2regularization_losses
3	variables
4	keras_api
R
5trainable_variables
6regularization_losses
7	variables
8	keras_api
h

kernel
bias
9trainable_variables
:regularization_losses
;	variables
<	keras_api
R
=trainable_variables
>regularization_losses
?	variables
@	keras_api
h

kernel
 bias
Atrainable_variables
Bregularization_losses
C	variables
D	keras_api
?
Eiter

Fbeta_1

Gbeta_2
	Hdecay
Ilearning_ratem?m?m?m? m?v?v?v?v? v?
#
0
1
2
3
 4
 
#
0
1
2
3
 4
?

Jlayers
Klayer_regularization_losses
Lmetrics
Mlayer_metrics
Nnon_trainable_variables
trainable_variables
regularization_losses
	variables
 
 
 
?

Olayers
Player_regularization_losses
Qmetrics
Rnon_trainable_variables
Slayer_metrics
trainable_variables
regularization_losses
	variables
ZX
VARIABLE_VALUEembedding/embeddings0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUE
RP
VARIABLE_VALUEdense/kernel0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUE
PN
VARIABLE_VALUE
dense/bias0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUEdense_1/kernel0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUE
RP
VARIABLE_VALUEdense_1/bias0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUE

0
1
2
 

T0
U1
 
 

V_initializer
RP
tableGlayer_with_weights-0/_index_lookup_layer/token_counts/.ATTRIBUTES/table
 

0
 

0
?

Wlayers
Xlayer_regularization_losses
Ymetrics
Znon_trainable_variables
[layer_metrics
)trainable_variables
*regularization_losses
+	variables
 
 
 
?

\layers
]layer_regularization_losses
^metrics
_non_trainable_variables
`layer_metrics
-trainable_variables
.regularization_losses
/	variables
 
 
 
?

alayers
blayer_regularization_losses
cmetrics
dnon_trainable_variables
elayer_metrics
1trainable_variables
2regularization_losses
3	variables
 
 
 
?

flayers
glayer_regularization_losses
hmetrics
inon_trainable_variables
jlayer_metrics
5trainable_variables
6regularization_losses
7	variables

0
1
 

0
1
?

klayers
llayer_regularization_losses
mmetrics
nnon_trainable_variables
olayer_metrics
9trainable_variables
:regularization_losses
;	variables
 
 
 
?

players
qlayer_regularization_losses
rmetrics
snon_trainable_variables
tlayer_metrics
=trainable_variables
>regularization_losses
?	variables

0
 1
 

0
 1
?

ulayers
vlayer_regularization_losses
wmetrics
xnon_trainable_variables
ylayer_metrics
Atrainable_variables
Bregularization_losses
C	variables
][
VARIABLE_VALUE	Adam/iter>layer_with_weights-1/optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUEAdam/beta_1@layer_with_weights-1/optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUEAdam/beta_2@layer_with_weights-1/optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUE
Adam/decay?layer_with_weights-1/optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
om
VARIABLE_VALUEAdam/learning_rateGlayer_with_weights-1/optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
1
0
1
2
3
4
5
6
 

z0
{1
 
 
 
 
 
 
 
4
	|total
	}count
~	variables
	keras_api
I

?total

?count
?
_fn_kwargs
?	variables
?	keras_api
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
8

?total

?count
?	variables
?	keras_api
I

?total

?count
?
_fn_kwargs
?	variables
?	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

|0
}1

~	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

?0
?1

?	variables
fd
VARIABLE_VALUEtotal_2Ilayer_with_weights-1/keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUEcount_2Ilayer_with_weights-1/keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

?0
?1

?	variables
fd
VARIABLE_VALUEtotal_3Ilayer_with_weights-1/keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUEcount_3Ilayer_with_weights-1/keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

?0
?1

?	variables
??
VARIABLE_VALUEAdam/embedding/embeddings/matrainable_variables/0/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/dense/kernel/matrainable_variables/1/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/dense/bias/matrainable_variables/2/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/dense_1/kernel/matrainable_variables/3/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/dense_1/bias/matrainable_variables/4/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/embedding/embeddings/vatrainable_variables/0/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/dense/kernel/vatrainable_variables/1/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/dense/bias/vatrainable_variables/2/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/dense_1/kernel/vatrainable_variables/3/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/dense_1/bias/vatrainable_variables/4/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
z
serving_default_input_1Placeholder*'
_output_shapes
:?????????*
dtype0*
shape:?????????
?
StatefulPartitionedCall_1StatefulPartitionedCallserving_default_input_1
hash_tableConstConst_1Const_2embedding/embeddingsdense/kernel
dense/biasdense_1/kerneldense_1/bias*
Tin
2
		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*'
_read_only_resource_inputs	
	*0
config_proto 

CPU

GPU2*0J 8? *.
f)R'
%__inference_signature_wrapper_1815327
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename(embedding/embeddings/Read/ReadVariableOp dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOp"dense_1/kernel/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOp?MutableHashTable_lookup_table_export_values/LookupTableExportV2AMutableHashTable_lookup_table_export_values/LookupTableExportV2:1Adam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal_2/Read/ReadVariableOpcount_2/Read/ReadVariableOptotal_3/Read/ReadVariableOpcount_3/Read/ReadVariableOp/Adam/embedding/embeddings/m/Read/ReadVariableOp'Adam/dense/kernel/m/Read/ReadVariableOp%Adam/dense/bias/m/Read/ReadVariableOp)Adam/dense_1/kernel/m/Read/ReadVariableOp'Adam/dense_1/bias/m/Read/ReadVariableOp/Adam/embedding/embeddings/v/Read/ReadVariableOp'Adam/dense/kernel/v/Read/ReadVariableOp%Adam/dense/bias/v/Read/ReadVariableOp)Adam/dense_1/kernel/v/Read/ReadVariableOp'Adam/dense_1/bias/v/Read/ReadVariableOpConst_6*+
Tin$
"2 		*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *)
f$R"
 __inference__traced_save_1816183
?
StatefulPartitionedCall_3StatefulPartitionedCallsaver_filenameembedding/embeddingsdense/kernel
dense/biasdense_1/kerneldense_1/biasMutableHashTable	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1total_2count_2total_3count_3Adam/embedding/embeddings/mAdam/dense/kernel/mAdam/dense/bias/mAdam/dense_1/kernel/mAdam/dense_1/bias/mAdam/embedding/embeddings/vAdam/dense/kernel/vAdam/dense/bias/vAdam/dense_1/kernel/vAdam/dense_1/bias/v*)
Tin"
 2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *,
f'R%
#__inference__traced_restore_1816280??
?#
?
G__inference_sequential_layer_call_and_return_conditional_losses_1814761

inputs$
embedding_1814743:	?N 
dense_1814749:  
dense_1814751: !
dense_1_1814755: 
dense_1_1814757:
identity??dense/StatefulPartitionedCall?dense_1/StatefulPartitionedCall?dropout/StatefulPartitionedCall?!dropout_1/StatefulPartitionedCall?!dropout_2/StatefulPartitionedCall?!embedding/StatefulPartitionedCall?
!embedding/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_1814743*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :?????????????????? *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_embedding_layer_call_and_return_conditional_losses_18145422#
!embedding/StatefulPartitionedCall?
dropout/StatefulPartitionedCallStatefulPartitionedCall*embedding/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :?????????????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dropout_layer_call_and_return_conditional_losses_18147122!
dropout/StatefulPartitionedCall?
(global_average_pooling1d/PartitionedCallPartitionedCall(dropout/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *^
fYRW
U__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_18145582*
(global_average_pooling1d/PartitionedCall?
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall1global_average_pooling1d/PartitionedCall:output:0 ^dropout/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_1_layer_call_and_return_conditional_losses_18146842#
!dropout_1/StatefulPartitionedCall?
dense/StatefulPartitionedCallStatefulPartitionedCall*dropout_1/StatefulPartitionedCall:output:0dense_1814749dense_1814751*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_layer_call_and_return_conditional_losses_18145782
dense/StatefulPartitionedCall?
!dropout_2/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0"^dropout_1/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_2_layer_call_and_return_conditional_losses_18146512#
!dropout_2/StatefulPartitionedCall?
dense_1/StatefulPartitionedCallStatefulPartitionedCall*dropout_2/StatefulPartitionedCall:output:0dense_1_1814755dense_1_1814757*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_1_layer_call_and_return_conditional_losses_18146012!
dense_1/StatefulPartitionedCall?
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dropout/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall"^dropout_2/StatefulPartitionedCall"^embedding/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall2F
!dropout_2/StatefulPartitionedCall!dropout_2/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall:X T
0
_output_shapes
:??????????????????
 
_user_specified_nameinputs
?
.
__inference__destroyer_1816007
identityP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
ConstQ
IdentityIdentityConst:output:0*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
?
?
'__inference_dense_layer_call_fn_1815943

inputs
unknown:  
	unknown_0: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_layer_call_and_return_conditional_losses_18145782
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
 __inference__initializer_18160026
2key_value_init184_lookuptableimportv2_table_handle.
*key_value_init184_lookuptableimportv2_keys0
,key_value_init184_lookuptableimportv2_values	
identity??%key_value_init184/LookupTableImportV2?
%key_value_init184/LookupTableImportV2LookupTableImportV22key_value_init184_lookuptableimportv2_table_handle*key_value_init184_lookuptableimportv2_keys,key_value_init184_lookuptableimportv2_values*	
Tin0*

Tout0	*
_output_shapes
 2'
%key_value_init184/LookupTableImportV2P
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
ConstX
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: 2

Identityv
NoOpNoOp&^key_value_init184/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
: :?N:?N2N
%key_value_init184/LookupTableImportV2%key_value_init184/LookupTableImportV2:!

_output_shapes	
:?N:!

_output_shapes	
:?N
?

?
.__inference_sequential_1_layer_call_fn_1815527

inputs
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3:	?N 
	unknown_4:  
	unknown_5: 
	unknown_6: 
	unknown_7:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*'
_read_only_resource_inputs	
	*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_sequential_1_layer_call_and_return_conditional_losses_18149342
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
?
G__inference_sequential_layer_call_and_return_conditional_losses_1814810
embedding_input$
embedding_1814792:	?N 
dense_1814798:  
dense_1814800: !
dense_1_1814804: 
dense_1_1814806:
identity??dense/StatefulPartitionedCall?dense_1/StatefulPartitionedCall?!embedding/StatefulPartitionedCall?
!embedding/StatefulPartitionedCallStatefulPartitionedCallembedding_inputembedding_1814792*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :?????????????????? *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_embedding_layer_call_and_return_conditional_losses_18145422#
!embedding/StatefulPartitionedCall?
dropout/PartitionedCallPartitionedCall*embedding/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :?????????????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dropout_layer_call_and_return_conditional_losses_18145512
dropout/PartitionedCall?
(global_average_pooling1d/PartitionedCallPartitionedCall dropout/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *^
fYRW
U__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_18145582*
(global_average_pooling1d/PartitionedCall?
dropout_1/PartitionedCallPartitionedCall1global_average_pooling1d/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_1_layer_call_and_return_conditional_losses_18145652
dropout_1/PartitionedCall?
dense/StatefulPartitionedCallStatefulPartitionedCall"dropout_1/PartitionedCall:output:0dense_1814798dense_1814800*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_layer_call_and_return_conditional_losses_18145782
dense/StatefulPartitionedCall?
dropout_2/PartitionedCallPartitionedCall&dense/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_2_layer_call_and_return_conditional_losses_18145892
dropout_2/PartitionedCall?
dense_1/StatefulPartitionedCallStatefulPartitionedCall"dropout_2/PartitionedCall:output:0dense_1_1814804dense_1_1814806*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_1_layer_call_and_return_conditional_losses_18146012!
dense_1/StatefulPartitionedCall?
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall"^embedding/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall:a ]
0
_output_shapes
:??????????????????
)
_user_specified_nameembedding_input
?
c
D__inference_dropout_layer_call_and_return_conditional_losses_1814712

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout/Const?
dropout/MulMulinputsdropout/Const:output:0*
T0*4
_output_shapes"
 :?????????????????? 2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*4
_output_shapes"
 :?????????????????? *
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*4
_output_shapes"
 :?????????????????? 2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*4
_output_shapes"
 :?????????????????? 2
dropout/Cast?
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*4
_output_shapes"
 :?????????????????? 2
dropout/Mul_1r
IdentityIdentitydropout/Mul_1:z:0*
T0*4
_output_shapes"
 :?????????????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :?????????????????? :\ X
4
_output_shapes"
 :?????????????????? 
 
_user_specified_nameinputs
?
c
G__inference_activation_layer_call_and_return_conditional_losses_1815825

inputs
identityW
SigmoidSigmoidinputs*
T0*'
_output_shapes
:?????????2	
Sigmoid_
IdentityIdentitySigmoid:y:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
H
__inference__creator_1816012
identity: ??MutableHashTable?
MutableHashTableMutableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name
table_91*
value_dtype0	2
MutableHashTablei
IdentityIdentityMutableHashTable:table_handle:0^NoOp*
T0*
_output_shapes
: 2

Identitya
NoOpNoOp^MutableHashTable*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 2$
MutableHashTableMutableHashTable
?
e
F__inference_dropout_2_layer_call_and_return_conditional_losses_1815960

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:????????? 2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:????????? 2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:????????? :O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?D
?
 __inference__traced_save_1816183
file_prefix3
/savev2_embedding_embeddings_read_readvariableop+
'savev2_dense_kernel_read_readvariableop)
%savev2_dense_bias_read_readvariableop-
)savev2_dense_1_kernel_read_readvariableop+
'savev2_dense_1_bias_read_readvariableopJ
Fsavev2_mutablehashtable_lookup_table_export_values_lookuptableexportv2L
Hsavev2_mutablehashtable_lookup_table_export_values_lookuptableexportv2_1	(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop&
"savev2_total_2_read_readvariableop&
"savev2_count_2_read_readvariableop&
"savev2_total_3_read_readvariableop&
"savev2_count_3_read_readvariableop:
6savev2_adam_embedding_embeddings_m_read_readvariableop2
.savev2_adam_dense_kernel_m_read_readvariableop0
,savev2_adam_dense_bias_m_read_readvariableop4
0savev2_adam_dense_1_kernel_m_read_readvariableop2
.savev2_adam_dense_1_bias_m_read_readvariableop:
6savev2_adam_embedding_embeddings_v_read_readvariableop2
.savev2_adam_dense_kernel_v_read_readvariableop0
,savev2_adam_dense_bias_v_read_readvariableop4
0savev2_adam_dense_1_kernel_v_read_readvariableop2
.savev2_adam_dense_1_bias_v_read_readvariableop
savev2_const_6

identity_1??MergeV2Checkpoints?
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUEBLlayer_with_weights-0/_index_lookup_layer/token_counts/.ATTRIBUTES/table-keysBNlayer_with_weights-0/_index_lookup_layer/token_counts/.ATTRIBUTES/table-valuesB>layer_with_weights-1/optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-1/optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-1/optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEBGlayer_with_weights-1/optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBIlayer_with_weights-1/keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEBIlayer_with_weights-1/keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBIlayer_with_weights-1/keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEBIlayer_with_weights-1/keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBatrainable_variables/0/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBatrainable_variables/1/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBatrainable_variables/2/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBatrainable_variables/3/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBatrainable_variables/4/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBatrainable_variables/0/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBatrainable_variables/1/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBatrainable_variables/2/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBatrainable_variables/3/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBatrainable_variables/4/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Q
valueHBFB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0/savev2_embedding_embeddings_read_readvariableop'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableop)savev2_dense_1_kernel_read_readvariableop'savev2_dense_1_bias_read_readvariableopFsavev2_mutablehashtable_lookup_table_export_values_lookuptableexportv2Hsavev2_mutablehashtable_lookup_table_export_values_lookuptableexportv2_1$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop"savev2_total_2_read_readvariableop"savev2_count_2_read_readvariableop"savev2_total_3_read_readvariableop"savev2_count_3_read_readvariableop6savev2_adam_embedding_embeddings_m_read_readvariableop.savev2_adam_dense_kernel_m_read_readvariableop,savev2_adam_dense_bias_m_read_readvariableop0savev2_adam_dense_1_kernel_m_read_readvariableop.savev2_adam_dense_1_bias_m_read_readvariableop6savev2_adam_embedding_embeddings_v_read_readvariableop.savev2_adam_dense_kernel_v_read_readvariableop,savev2_adam_dense_bias_v_read_readvariableop0savev2_adam_dense_1_kernel_v_read_readvariableop.savev2_adam_dense_1_bias_v_read_readvariableopsavev2_const_6"/device:CPU:0*
_output_shapes
 *-
dtypes#
!2		2
SaveV2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identity_

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: 2

Identity_1c
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_1Identity_1:output:0*?
_input_shapes?
?: :	?N :  : : :::: : : : : : : : : : : : : :	?N :  : : ::	?N :  : : :: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	?N :$ 

_output_shapes

:  : 

_output_shapes
: :$ 

_output_shapes

: : 

_output_shapes
::

_output_shapes
::

_output_shapes
::

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	?N :$ 

_output_shapes

:  : 

_output_shapes
: :$ 

_output_shapes

: : 

_output_shapes
::%!

_output_shapes
:	?N :$ 

_output_shapes

:  : 

_output_shapes
: :$ 

_output_shapes

: : 

_output_shapes
::

_output_shapes
: 
?
G
+__inference_dropout_2_layer_call_fn_1815965

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_2_layer_call_and_return_conditional_losses_18145892
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:????????? :O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
q
U__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_1814511

inputs
identityr
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Mean/reduction_indicesx
MeanMeaninputsMean/reduction_indices:output:0*
T0*0
_output_shapes
:??????????????????2
Meanj
IdentityIdentityMean:output:0*
T0*0
_output_shapes
:??????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'???????????????????????????:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
?
e
F__inference_dropout_1_layer_call_and_return_conditional_losses_1814684

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:????????? 2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:????????? 2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:????????? :O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
d
F__inference_dropout_1_layer_call_and_return_conditional_losses_1815901

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:????????? 2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:????????? 2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:????????? :O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
B__inference_dense_layer_call_and_return_conditional_losses_1815934

inputs0
matmul_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:  *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
Relum
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?@
?
G__inference_sequential_layer_call_and_return_conditional_losses_1815028

inputs	5
"embedding_embedding_lookup_1814983:	?N 6
$dense_matmul_readvariableop_resource:  3
%dense_biasadd_readvariableop_resource: 8
&dense_1_matmul_readvariableop_resource: 5
'dense_1_biasadd_readvariableop_resource:
identity??dense/BiasAdd/ReadVariableOp?dense/MatMul/ReadVariableOp?dense_1/BiasAdd/ReadVariableOp?dense_1/MatMul/ReadVariableOp?embedding/embedding_lookup^
CastCastinputs*

DstT0*

SrcT0	*(
_output_shapes
:??????????2
Castt
embedding/CastCastCast:y:0*

DstT0*

SrcT0*(
_output_shapes
:??????????2
embedding/Cast?
embedding/embedding_lookupResourceGather"embedding_embedding_lookup_1814983embedding/Cast:y:0",/job:localhost/replica:0/task:0/device:GPU:0*
Tindices0*5
_class+
)'loc:@embedding/embedding_lookup/1814983*,
_output_shapes
:?????????? *
dtype02
embedding/embedding_lookup?
#embedding/embedding_lookup/IdentityIdentity#embedding/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*5
_class+
)'loc:@embedding/embedding_lookup/1814983*,
_output_shapes
:?????????? 2%
#embedding/embedding_lookup/Identity?
%embedding/embedding_lookup/Identity_1Identity,embedding/embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:?????????? 2'
%embedding/embedding_lookup/Identity_1s
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout/dropout/Const?
dropout/dropout/MulMul.embedding/embedding_lookup/Identity_1:output:0dropout/dropout/Const:output:0*
T0*,
_output_shapes
:?????????? 2
dropout/dropout/Mul?
dropout/dropout/ShapeShape.embedding/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:2
dropout/dropout/Shape?
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*,
_output_shapes
:?????????? *
dtype02.
,dropout/dropout/random_uniform/RandomUniform?
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2 
dropout/dropout/GreaterEqual/y?
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:?????????? 2
dropout/dropout/GreaterEqual?
dropout/dropout/CastCast dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:?????????? 2
dropout/dropout/Cast?
dropout/dropout/Mul_1Muldropout/dropout/Mul:z:0dropout/dropout/Cast:y:0*
T0*,
_output_shapes
:?????????? 2
dropout/dropout/Mul_1?
/global_average_pooling1d/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :21
/global_average_pooling1d/Mean/reduction_indices?
global_average_pooling1d/MeanMeandropout/dropout/Mul_1:z:08global_average_pooling1d/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:????????? 2
global_average_pooling1d/Meanw
dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout_1/dropout/Const?
dropout_1/dropout/MulMul&global_average_pooling1d/Mean:output:0 dropout_1/dropout/Const:output:0*
T0*'
_output_shapes
:????????? 2
dropout_1/dropout/Mul?
dropout_1/dropout/ShapeShape&global_average_pooling1d/Mean:output:0*
T0*
_output_shapes
:2
dropout_1/dropout/Shape?
.dropout_1/dropout/random_uniform/RandomUniformRandomUniform dropout_1/dropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype020
.dropout_1/dropout/random_uniform/RandomUniform?
 dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2"
 dropout_1/dropout/GreaterEqual/y?
dropout_1/dropout/GreaterEqualGreaterEqual7dropout_1/dropout/random_uniform/RandomUniform:output:0)dropout_1/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2 
dropout_1/dropout/GreaterEqual?
dropout_1/dropout/CastCast"dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
dropout_1/dropout/Cast?
dropout_1/dropout/Mul_1Muldropout_1/dropout/Mul:z:0dropout_1/dropout/Cast:y:0*
T0*'
_output_shapes
:????????? 2
dropout_1/dropout/Mul_1?
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes

:  *
dtype02
dense/MatMul/ReadVariableOp?
dense/MatMulMatMuldropout_1/dropout/Mul_1:z:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
dense/MatMul?
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02
dense/BiasAdd/ReadVariableOp?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
dense/BiasAddj

dense/ReluReludense/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2

dense/Reluw
dropout_2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout_2/dropout/Const?
dropout_2/dropout/MulMuldense/Relu:activations:0 dropout_2/dropout/Const:output:0*
T0*'
_output_shapes
:????????? 2
dropout_2/dropout/Mulz
dropout_2/dropout/ShapeShapedense/Relu:activations:0*
T0*
_output_shapes
:2
dropout_2/dropout/Shape?
.dropout_2/dropout/random_uniform/RandomUniformRandomUniform dropout_2/dropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype020
.dropout_2/dropout/random_uniform/RandomUniform?
 dropout_2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2"
 dropout_2/dropout/GreaterEqual/y?
dropout_2/dropout/GreaterEqualGreaterEqual7dropout_2/dropout/random_uniform/RandomUniform:output:0)dropout_2/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2 
dropout_2/dropout/GreaterEqual?
dropout_2/dropout/CastCast"dropout_2/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
dropout_2/dropout/Cast?
dropout_2/dropout/Mul_1Muldropout_2/dropout/Mul:z:0dropout_2/dropout/Cast:y:0*
T0*'
_output_shapes
:????????? 2
dropout_2/dropout/Mul_1?
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes

: *
dtype02
dense_1/MatMul/ReadVariableOp?
dense_1/MatMulMatMuldropout_2/dropout/Mul_1:z:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_1/MatMul?
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_1/BiasAdd/ReadVariableOp?
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_1/BiasAdds
IdentityIdentitydense_1/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^embedding/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:??????????: : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp28
embedding/embedding_lookupembedding/embedding_lookup:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
F__inference_embedding_layer_call_and_return_conditional_losses_1815840

inputs+
embedding_lookup_1815834:	?N 
identity??embedding_lookupf
CastCastinputs*

DstT0*

SrcT0*0
_output_shapes
:??????????????????2
Cast?
embedding_lookupResourceGatherembedding_lookup_1815834Cast:y:0",/job:localhost/replica:0/task:0/device:GPU:0*
Tindices0*+
_class!
loc:@embedding_lookup/1815834*4
_output_shapes"
 :?????????????????? *
dtype02
embedding_lookup?
embedding_lookup/IdentityIdentityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*+
_class!
loc:@embedding_lookup/1815834*4
_output_shapes"
 :?????????????????? 2
embedding_lookup/Identity?
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*4
_output_shapes"
 :?????????????????? 2
embedding_lookup/Identity_1?
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*4
_output_shapes"
 :?????????????????? 2

Identitya
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:??????????????????: 2$
embedding_lookupembedding_lookup:X T
0
_output_shapes
:??????????????????
 
_user_specified_nameinputs
?
H
,__inference_activation_layer_call_fn_1815830

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_activation_layer_call_and_return_conditional_losses_18149312
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
??
?
#__inference__traced_restore_1816280
file_prefix8
%assignvariableop_embedding_embeddings:	?N 1
assignvariableop_1_dense_kernel:  +
assignvariableop_2_dense_bias: 3
!assignvariableop_3_dense_1_kernel: -
assignvariableop_4_dense_1_bias:M
Cmutablehashtable_table_restore_lookuptableimportv2_mutablehashtable: &
assignvariableop_5_adam_iter:	 (
assignvariableop_6_adam_beta_1: (
assignvariableop_7_adam_beta_2: '
assignvariableop_8_adam_decay: /
%assignvariableop_9_adam_learning_rate: #
assignvariableop_10_total: #
assignvariableop_11_count: %
assignvariableop_12_total_1: %
assignvariableop_13_count_1: %
assignvariableop_14_total_2: %
assignvariableop_15_count_2: %
assignvariableop_16_total_3: %
assignvariableop_17_count_3: B
/assignvariableop_18_adam_embedding_embeddings_m:	?N 9
'assignvariableop_19_adam_dense_kernel_m:  3
%assignvariableop_20_adam_dense_bias_m: ;
)assignvariableop_21_adam_dense_1_kernel_m: 5
'assignvariableop_22_adam_dense_1_bias_m:B
/assignvariableop_23_adam_embedding_embeddings_v:	?N 9
'assignvariableop_24_adam_dense_kernel_v:  3
%assignvariableop_25_adam_dense_bias_v: ;
)assignvariableop_26_adam_dense_1_kernel_v: 5
'assignvariableop_27_adam_dense_1_bias_v:
identity_29??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?2MutableHashTable_table_restore/LookupTableImportV2?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUEBLlayer_with_weights-0/_index_lookup_layer/token_counts/.ATTRIBUTES/table-keysBNlayer_with_weights-0/_index_lookup_layer/token_counts/.ATTRIBUTES/table-valuesB>layer_with_weights-1/optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-1/optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-1/optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEBGlayer_with_weights-1/optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBIlayer_with_weights-1/keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEBIlayer_with_weights-1/keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBIlayer_with_weights-1/keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEBIlayer_with_weights-1/keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBatrainable_variables/0/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBatrainable_variables/1/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBatrainable_variables/2/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBatrainable_variables/3/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBatrainable_variables/4/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBatrainable_variables/0/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBatrainable_variables/1/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBatrainable_variables/2/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBatrainable_variables/3/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBatrainable_variables/4/.OPTIMIZER_SLOT/layer_with_weights-1/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Q
valueHBFB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes~
|:::::::::::::::::::::::::::::::*-
dtypes#
!2		2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOp%assignvariableop_embedding_embeddingsIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_kernelIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOpassignvariableop_2_dense_biasIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp!assignvariableop_3_dense_1_kernelIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOpassignvariableop_4_dense_1_biasIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4?
2MutableHashTable_table_restore/LookupTableImportV2LookupTableImportV2Cmutablehashtable_table_restore_lookuptableimportv2_mutablehashtableRestoreV2:tensors:5RestoreV2:tensors:6*	
Tin0*

Tout0	*#
_class
loc:@MutableHashTable*
_output_shapes
 24
2MutableHashTable_table_restore/LookupTableImportV2k

Identity_5IdentityRestoreV2:tensors:7"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_iterIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOpassignvariableop_6_adam_beta_1Identity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOpassignvariableop_7_adam_beta_2Identity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7l

Identity_8IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOpassignvariableop_8_adam_decayIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8l

Identity_9IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp%assignvariableop_9_adam_learning_rateIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOpassignvariableop_10_totalIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOpassignvariableop_11_countIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOpassignvariableop_12_total_1Identity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOpassignvariableop_13_count_1Identity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOpassignvariableop_14_total_2Identity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOpassignvariableop_15_count_2Identity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOpassignvariableop_16_total_3Identity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOpassignvariableop_17_count_3Identity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOp/assignvariableop_18_adam_embedding_embeddings_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp'assignvariableop_19_adam_dense_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp%assignvariableop_20_adam_dense_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp)assignvariableop_21_adam_dense_1_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp'assignvariableop_22_adam_dense_1_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp/assignvariableop_23_adam_embedding_embeddings_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp'assignvariableop_24_adam_dense_kernel_vIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp%assignvariableop_25_adam_dense_bias_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp)assignvariableop_26_adam_dense_1_kernel_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp'assignvariableop_27_adam_dense_1_bias_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_279
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_28Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_93^MutableHashTable_table_restore/LookupTableImportV2^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_28f
Identity_29IdentityIdentity_28:output:0^NoOp_1*
T0*
_output_shapes
: 2
Identity_29?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_93^MutableHashTable_table_restore/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 2
NoOp_1"#
identity_29Identity_29:output:0*O
_input_shapes>
<: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_92h
2MutableHashTable_table_restore/LookupTableImportV22MutableHashTable_table_restore/LookupTableImportV2:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:)%
#
_class
loc:@MutableHashTable
?
0
 __inference__initializer_1816017
identityP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
ConstQ
IdentityIdentityConst:output:0*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
?
d
+__inference_dropout_1_layer_call_fn_1815923

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_1_layer_call_and_return_conditional_losses_18146842
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:????????? 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?

?
D__inference_dense_1_layer_call_and_return_conditional_losses_1814601

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAddk
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?

?
D__inference_dense_1_layer_call_and_return_conditional_losses_1815980

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAddk
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
b
)__inference_dropout_layer_call_fn_1815874

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :?????????????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dropout_layer_call_and_return_conditional_losses_18147122
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :?????????????????? 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :?????????????????? 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :?????????????????? 
 
_user_specified_nameinputs
?
c
G__inference_activation_layer_call_and_return_conditional_losses_1814931

inputs
identityW
SigmoidSigmoidinputs*
T0*'
_output_shapes
:?????????2	
Sigmoid_
IdentityIdentitySigmoid:y:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?y
?
I__inference_sequential_1_layer_call_and_return_conditional_losses_1814934

inputsO
Ktext_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handleP
Ltext_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value	,
(text_vectorization_string_lookup_equal_y/
+text_vectorization_string_lookup_selectv2_t	%
sequential_1814915:	?N $
sequential_1814917:   
sequential_1814919: $
sequential_1814921:  
sequential_1814923:
identity??"sequential/StatefulPartitionedCall?>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2?
text_vectorization/StringLowerStringLowerinputs*'
_output_shapes
:?????????2 
text_vectorization/StringLower?
%text_vectorization/StaticRegexReplaceStaticRegexReplace'text_vectorization/StringLower:output:0*'
_output_shapes
:?????????*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite 2'
%text_vectorization/StaticRegexReplace?
text_vectorization/SqueezeSqueeze.text_vectorization/StaticRegexReplace:output:0*
T0*#
_output_shapes
:?????????*
squeeze_dims

?????????2
text_vectorization/Squeeze?
$text_vectorization/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B 2&
$text_vectorization/StringSplit/Const?
,text_vectorization/StringSplit/StringSplitV2StringSplitV2#text_vectorization/Squeeze:output:0-text_vectorization/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:2.
,text_vectorization/StringSplit/StringSplitV2?
2text_vectorization/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        24
2text_vectorization/StringSplit/strided_slice/stack?
4text_vectorization/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       26
4text_vectorization/StringSplit/strided_slice/stack_1?
4text_vectorization/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      26
4text_vectorization/StringSplit/strided_slice/stack_2?
,text_vectorization/StringSplit/strided_sliceStridedSlice6text_vectorization/StringSplit/StringSplitV2:indices:0;text_vectorization/StringSplit/strided_slice/stack:output:0=text_vectorization/StringSplit/strided_slice/stack_1:output:0=text_vectorization/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2.
,text_vectorization/StringSplit/strided_slice?
4text_vectorization/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 26
4text_vectorization/StringSplit/strided_slice_1/stack?
6text_vectorization/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:28
6text_vectorization/StringSplit/strided_slice_1/stack_1?
6text_vectorization/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:28
6text_vectorization/StringSplit/strided_slice_1/stack_2?
.text_vectorization/StringSplit/strided_slice_1StridedSlice4text_vectorization/StringSplit/StringSplitV2:shape:0=text_vectorization/StringSplit/strided_slice_1/stack:output:0?text_vectorization/StringSplit/strided_slice_1/stack_1:output:0?text_vectorization/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask20
.text_vectorization/StringSplit/strided_slice_1?
Utext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast5text_vectorization/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:?????????2W
Utext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast7text_vectorization/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: 2Y
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapeYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:2a
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2a
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdhtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: 2`
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod?
ctext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : 2e
ctext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreatergtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ltext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: 2c
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastetext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: 2`
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2c
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: 2_
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :2a
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2ftext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: 2_
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulbtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: 2_
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: 2c
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: 2c
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 2c
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2?
btext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:?????????2d
btext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount?
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : 2^
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumitext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:?????????2Y
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum?
`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R 2b
`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0?
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2^
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2itext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:?????????2Y
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat?
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2LookupTableFindV2Ktext_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handle5text_vectorization/StringSplit/StringSplitV2:values:0Ltext_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:?????????2@
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2?
&text_vectorization/string_lookup/EqualEqual5text_vectorization/StringSplit/StringSplitV2:values:0(text_vectorization_string_lookup_equal_y*
T0*#
_output_shapes
:?????????2(
&text_vectorization/string_lookup/Equal?
)text_vectorization/string_lookup/SelectV2SelectV2*text_vectorization/string_lookup/Equal:z:0+text_vectorization_string_lookup_selectv2_tGtext_vectorization/string_lookup/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:?????????2+
)text_vectorization/string_lookup/SelectV2?
)text_vectorization/string_lookup/IdentityIdentity2text_vectorization/string_lookup/SelectV2:output:0*
T0	*#
_output_shapes
:?????????2+
)text_vectorization/string_lookup/Identity?
/text_vectorization/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R 21
/text_vectorization/RaggedToTensor/default_value?
'text_vectorization/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"?????????       2)
'text_vectorization/RaggedToTensor/Const?
6text_vectorization/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor0text_vectorization/RaggedToTensor/Const:output:02text_vectorization/string_lookup/Identity:output:08text_vectorization/RaggedToTensor/default_value:output:0`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat:output:0*
T0	*
Tindex0	*
Tshape0	*(
_output_shapes
:??????????*
num_row_partition_tensors*%
row_partition_types

ROW_SPLITS28
6text_vectorization/RaggedToTensor/RaggedTensorToTensor?
"sequential/StatefulPartitionedCallStatefulPartitionedCall?text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0sequential_1814915sequential_1814917sequential_1814919sequential_1814921sequential_1814923*
Tin

2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*'
_read_only_resource_inputs	
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_sequential_layer_call_and_return_conditional_losses_18149142$
"sequential/StatefulPartitionedCall?
activation/PartitionedCallPartitionedCall+sequential/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_activation_layer_call_and_return_conditional_losses_18149312
activation/PartitionedCall~
IdentityIdentity#activation/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp#^sequential/StatefulPartitionedCall?^text_vectorization/string_lookup/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : : : : : : 2H
"sequential/StatefulPartitionedCall"sequential/StatefulPartitionedCall2?
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?T
?
__inference_adapt_step_1815598
iterator

iterator_19
5none_lookup_table_find_lookuptablefindv2_table_handle:
6none_lookup_table_find_lookuptablefindv2_default_value	??IteratorGetNext?(None_lookup_table_find/LookupTableFindV2?,None_lookup_table_insert/LookupTableInsertV2?
IteratorGetNextIteratorGetNextiterator*
_class
loc:@iterator*#
_output_shapes
:?????????*"
output_shapes
:?????????*
output_types
22
IteratorGetNextl
StringLowerStringLowerIteratorGetNext:components:0*#
_output_shapes
:?????????2
StringLower?
StaticRegexReplaceStaticRegexReplaceStringLower:output:0*#
_output_shapes
:?????????*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite 2
StaticRegexReplaceg
StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B 2
StringSplit/Const?
StringSplit/StringSplitV2StringSplitV2StaticRegexReplace:output:0StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:2
StringSplit/StringSplitV2?
StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2!
StringSplit/strided_slice/stack?
!StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2#
!StringSplit/strided_slice/stack_1?
!StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!StringSplit/strided_slice/stack_2?
StringSplit/strided_sliceStridedSlice#StringSplit/StringSplitV2:indices:0(StringSplit/strided_slice/stack:output:0*StringSplit/strided_slice/stack_1:output:0*StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2
StringSplit/strided_slice?
!StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2#
!StringSplit/strided_slice_1/stack?
#StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2%
#StringSplit/strided_slice_1/stack_1?
#StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2%
#StringSplit/strided_slice_1/stack_2?
StringSplit/strided_slice_1StridedSlice!StringSplit/StringSplitV2:shape:0*StringSplit/strided_slice_1/stack:output:0,StringSplit/strided_slice_1/stack_1:output:0,StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask2
StringSplit/strided_slice_1?
BStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast"StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:?????????2D
BStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast?
DStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast$StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: 2F
DStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1?
LStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapeFStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:2N
LStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape?
LStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2N
LStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const?
KStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdUStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0UStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: 2M
KStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod?
PStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : 2R
PStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y?
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreaterTStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0YStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: 2P
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater?
KStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastRStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: 2M
KStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast?
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2P
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1?
JStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxFStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0WStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: 2L
JStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max?
LStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :2N
LStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y?
JStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2SStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0UStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: 2L
JStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add?
JStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulOStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: 2L
JStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul?
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximumHStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: 2P
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum?
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimumHStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0RStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: 2P
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum?
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 2P
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2?
OStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountFStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0RStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0WStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:?????????2Q
OStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount?
IStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : 2K
IStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis?
DStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumVStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0RStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:?????????2F
DStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum?
MStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R 2O
MStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0?
IStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2K
IStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis?
DStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2VStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0JStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0RStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:?????????2F
DStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat?
UniqueWithCountsUniqueWithCounts"StringSplit/StringSplitV2:values:0*
T0*A
_output_shapes/
-:?????????:?????????:?????????*
out_idx0	2
UniqueWithCounts?
(None_lookup_table_find/LookupTableFindV2LookupTableFindV25none_lookup_table_find_lookuptablefindv2_table_handleUniqueWithCounts:y:06none_lookup_table_find_lookuptablefindv2_default_value",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0*

Tout0	*
_output_shapes
:2*
(None_lookup_table_find/LookupTableFindV2?
addAddV2UniqueWithCounts:count:01None_lookup_table_find/LookupTableFindV2:values:0*
T0	*
_output_shapes
:2
add?
,None_lookup_table_insert/LookupTableInsertV2LookupTableInsertV25none_lookup_table_find_lookuptablefindv2_table_handleUniqueWithCounts:y:0add:z:0)^None_lookup_table_find/LookupTableFindV2",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0*

Tout0	*
_output_shapes
 2.
,None_lookup_table_insert/LookupTableInsertV2*(
_construction_contextkEagerRuntime*
_input_shapes

: : : : 2"
IteratorGetNextIteratorGetNext2T
(None_lookup_table_find/LookupTableFindV2(None_lookup_table_find/LookupTableFindV22\
,None_lookup_table_insert/LookupTableInsertV2,None_lookup_table_insert/LookupTableInsertV2:( $
"
_user_specified_name
iterator:@<

_output_shapes
: 
"
_user_specified_name
iterator:

_output_shapes
: 
?	
?
,__inference_sequential_layer_call_fn_1815775

inputs
unknown:	?N 
	unknown_0:  
	unknown_1: 
	unknown_2: 
	unknown_3:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*'
_read_only_resource_inputs	
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_sequential_layer_call_and_return_conditional_losses_18146082
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????????????
 
_user_specified_nameinputs
?
b
D__inference_dropout_layer_call_and_return_conditional_losses_1815852

inputs

identity_1g
IdentityIdentityinputs*
T0*4
_output_shapes"
 :?????????????????? 2

Identityv

Identity_1IdentityIdentity:output:0*
T0*4
_output_shapes"
 :?????????????????? 2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :?????????????????? :\ X
4
_output_shapes"
 :?????????????????? 
 
_user_specified_nameinputs
?
d
F__inference_dropout_1_layer_call_and_return_conditional_losses_1814565

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:????????? 2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:????????? 2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:????????? :O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?@
?
G__inference_sequential_layer_call_and_return_conditional_losses_1815760

inputs	5
"embedding_embedding_lookup_1815715:	?N 6
$dense_matmul_readvariableop_resource:  3
%dense_biasadd_readvariableop_resource: 8
&dense_1_matmul_readvariableop_resource: 5
'dense_1_biasadd_readvariableop_resource:
identity??dense/BiasAdd/ReadVariableOp?dense/MatMul/ReadVariableOp?dense_1/BiasAdd/ReadVariableOp?dense_1/MatMul/ReadVariableOp?embedding/embedding_lookup^
CastCastinputs*

DstT0*

SrcT0	*(
_output_shapes
:??????????2
Castt
embedding/CastCastCast:y:0*

DstT0*

SrcT0*(
_output_shapes
:??????????2
embedding/Cast?
embedding/embedding_lookupResourceGather"embedding_embedding_lookup_1815715embedding/Cast:y:0",/job:localhost/replica:0/task:0/device:GPU:0*
Tindices0*5
_class+
)'loc:@embedding/embedding_lookup/1815715*,
_output_shapes
:?????????? *
dtype02
embedding/embedding_lookup?
#embedding/embedding_lookup/IdentityIdentity#embedding/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*5
_class+
)'loc:@embedding/embedding_lookup/1815715*,
_output_shapes
:?????????? 2%
#embedding/embedding_lookup/Identity?
%embedding/embedding_lookup/Identity_1Identity,embedding/embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:?????????? 2'
%embedding/embedding_lookup/Identity_1s
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout/dropout/Const?
dropout/dropout/MulMul.embedding/embedding_lookup/Identity_1:output:0dropout/dropout/Const:output:0*
T0*,
_output_shapes
:?????????? 2
dropout/dropout/Mul?
dropout/dropout/ShapeShape.embedding/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:2
dropout/dropout/Shape?
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*,
_output_shapes
:?????????? *
dtype02.
,dropout/dropout/random_uniform/RandomUniform?
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2 
dropout/dropout/GreaterEqual/y?
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:?????????? 2
dropout/dropout/GreaterEqual?
dropout/dropout/CastCast dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:?????????? 2
dropout/dropout/Cast?
dropout/dropout/Mul_1Muldropout/dropout/Mul:z:0dropout/dropout/Cast:y:0*
T0*,
_output_shapes
:?????????? 2
dropout/dropout/Mul_1?
/global_average_pooling1d/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :21
/global_average_pooling1d/Mean/reduction_indices?
global_average_pooling1d/MeanMeandropout/dropout/Mul_1:z:08global_average_pooling1d/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:????????? 2
global_average_pooling1d/Meanw
dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout_1/dropout/Const?
dropout_1/dropout/MulMul&global_average_pooling1d/Mean:output:0 dropout_1/dropout/Const:output:0*
T0*'
_output_shapes
:????????? 2
dropout_1/dropout/Mul?
dropout_1/dropout/ShapeShape&global_average_pooling1d/Mean:output:0*
T0*
_output_shapes
:2
dropout_1/dropout/Shape?
.dropout_1/dropout/random_uniform/RandomUniformRandomUniform dropout_1/dropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype020
.dropout_1/dropout/random_uniform/RandomUniform?
 dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2"
 dropout_1/dropout/GreaterEqual/y?
dropout_1/dropout/GreaterEqualGreaterEqual7dropout_1/dropout/random_uniform/RandomUniform:output:0)dropout_1/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2 
dropout_1/dropout/GreaterEqual?
dropout_1/dropout/CastCast"dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
dropout_1/dropout/Cast?
dropout_1/dropout/Mul_1Muldropout_1/dropout/Mul:z:0dropout_1/dropout/Cast:y:0*
T0*'
_output_shapes
:????????? 2
dropout_1/dropout/Mul_1?
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes

:  *
dtype02
dense/MatMul/ReadVariableOp?
dense/MatMulMatMuldropout_1/dropout/Mul_1:z:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
dense/MatMul?
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02
dense/BiasAdd/ReadVariableOp?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
dense/BiasAddj

dense/ReluReludense/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2

dense/Reluw
dropout_2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout_2/dropout/Const?
dropout_2/dropout/MulMuldense/Relu:activations:0 dropout_2/dropout/Const:output:0*
T0*'
_output_shapes
:????????? 2
dropout_2/dropout/Mulz
dropout_2/dropout/ShapeShapedense/Relu:activations:0*
T0*
_output_shapes
:2
dropout_2/dropout/Shape?
.dropout_2/dropout/random_uniform/RandomUniformRandomUniform dropout_2/dropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype020
.dropout_2/dropout/random_uniform/RandomUniform?
 dropout_2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2"
 dropout_2/dropout/GreaterEqual/y?
dropout_2/dropout/GreaterEqualGreaterEqual7dropout_2/dropout/random_uniform/RandomUniform:output:0)dropout_2/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2 
dropout_2/dropout/GreaterEqual?
dropout_2/dropout/CastCast"dropout_2/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
dropout_2/dropout/Cast?
dropout_2/dropout/Mul_1Muldropout_2/dropout/Mul:z:0dropout_2/dropout/Cast:y:0*
T0*'
_output_shapes
:????????? 2
dropout_2/dropout/Mul_1?
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes

: *
dtype02
dense_1/MatMul/ReadVariableOp?
dense_1/MatMulMatMuldropout_2/dropout/Mul_1:z:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_1/MatMul?
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_1/BiasAdd/ReadVariableOp?
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_1/BiasAdds
IdentityIdentitydense_1/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^embedding/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:??????????: : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp28
embedding/embedding_lookupembedding/embedding_lookup:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
)__inference_dense_1_layer_call_fn_1815989

inputs
unknown: 
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_1_layer_call_and_return_conditional_losses_18146012
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
q
U__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_1815886

inputs
identityr
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Mean/reduction_indiceso
MeanMeaninputsMean/reduction_indices:output:0*
T0*'
_output_shapes
:????????? 2
Meana
IdentityIdentityMean:output:0*
T0*'
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :?????????????????? :\ X
4
_output_shapes"
 :?????????????????? 
 
_user_specified_nameinputs
?
E
)__inference_dropout_layer_call_fn_1815869

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :?????????????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dropout_layer_call_and_return_conditional_losses_18145512
PartitionedCally
IdentityIdentityPartitionedCall:output:0*
T0*4
_output_shapes"
 :?????????????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :?????????????????? :\ X
4
_output_shapes"
 :?????????????????? 
 
_user_specified_nameinputs
?
d
F__inference_dropout_2_layer_call_and_return_conditional_losses_1814589

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:????????? 2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:????????? 2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:????????? :O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
??
?
I__inference_sequential_1_layer_call_and_return_conditional_losses_1815405

inputsO
Ktext_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handleP
Ltext_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value	,
(text_vectorization_string_lookup_equal_y/
+text_vectorization_string_lookup_selectv2_t	@
-sequential_embedding_embedding_lookup_1815380:	?N A
/sequential_dense_matmul_readvariableop_resource:  >
0sequential_dense_biasadd_readvariableop_resource: C
1sequential_dense_1_matmul_readvariableop_resource: @
2sequential_dense_1_biasadd_readvariableop_resource:
identity??'sequential/dense/BiasAdd/ReadVariableOp?&sequential/dense/MatMul/ReadVariableOp?)sequential/dense_1/BiasAdd/ReadVariableOp?(sequential/dense_1/MatMul/ReadVariableOp?%sequential/embedding/embedding_lookup?>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2?
text_vectorization/StringLowerStringLowerinputs*'
_output_shapes
:?????????2 
text_vectorization/StringLower?
%text_vectorization/StaticRegexReplaceStaticRegexReplace'text_vectorization/StringLower:output:0*'
_output_shapes
:?????????*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite 2'
%text_vectorization/StaticRegexReplace?
text_vectorization/SqueezeSqueeze.text_vectorization/StaticRegexReplace:output:0*
T0*#
_output_shapes
:?????????*
squeeze_dims

?????????2
text_vectorization/Squeeze?
$text_vectorization/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B 2&
$text_vectorization/StringSplit/Const?
,text_vectorization/StringSplit/StringSplitV2StringSplitV2#text_vectorization/Squeeze:output:0-text_vectorization/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:2.
,text_vectorization/StringSplit/StringSplitV2?
2text_vectorization/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        24
2text_vectorization/StringSplit/strided_slice/stack?
4text_vectorization/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       26
4text_vectorization/StringSplit/strided_slice/stack_1?
4text_vectorization/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      26
4text_vectorization/StringSplit/strided_slice/stack_2?
,text_vectorization/StringSplit/strided_sliceStridedSlice6text_vectorization/StringSplit/StringSplitV2:indices:0;text_vectorization/StringSplit/strided_slice/stack:output:0=text_vectorization/StringSplit/strided_slice/stack_1:output:0=text_vectorization/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2.
,text_vectorization/StringSplit/strided_slice?
4text_vectorization/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 26
4text_vectorization/StringSplit/strided_slice_1/stack?
6text_vectorization/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:28
6text_vectorization/StringSplit/strided_slice_1/stack_1?
6text_vectorization/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:28
6text_vectorization/StringSplit/strided_slice_1/stack_2?
.text_vectorization/StringSplit/strided_slice_1StridedSlice4text_vectorization/StringSplit/StringSplitV2:shape:0=text_vectorization/StringSplit/strided_slice_1/stack:output:0?text_vectorization/StringSplit/strided_slice_1/stack_1:output:0?text_vectorization/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask20
.text_vectorization/StringSplit/strided_slice_1?
Utext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast5text_vectorization/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:?????????2W
Utext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast7text_vectorization/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: 2Y
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapeYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:2a
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2a
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdhtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: 2`
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod?
ctext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : 2e
ctext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreatergtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ltext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: 2c
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastetext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: 2`
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2c
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: 2_
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :2a
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2ftext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: 2_
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulbtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: 2_
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: 2c
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: 2c
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 2c
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2?
btext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:?????????2d
btext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount?
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : 2^
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumitext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:?????????2Y
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum?
`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R 2b
`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0?
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2^
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2itext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:?????????2Y
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat?
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2LookupTableFindV2Ktext_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handle5text_vectorization/StringSplit/StringSplitV2:values:0Ltext_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:?????????2@
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2?
&text_vectorization/string_lookup/EqualEqual5text_vectorization/StringSplit/StringSplitV2:values:0(text_vectorization_string_lookup_equal_y*
T0*#
_output_shapes
:?????????2(
&text_vectorization/string_lookup/Equal?
)text_vectorization/string_lookup/SelectV2SelectV2*text_vectorization/string_lookup/Equal:z:0+text_vectorization_string_lookup_selectv2_tGtext_vectorization/string_lookup/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:?????????2+
)text_vectorization/string_lookup/SelectV2?
)text_vectorization/string_lookup/IdentityIdentity2text_vectorization/string_lookup/SelectV2:output:0*
T0	*#
_output_shapes
:?????????2+
)text_vectorization/string_lookup/Identity?
/text_vectorization/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R 21
/text_vectorization/RaggedToTensor/default_value?
'text_vectorization/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"?????????       2)
'text_vectorization/RaggedToTensor/Const?
6text_vectorization/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor0text_vectorization/RaggedToTensor/Const:output:02text_vectorization/string_lookup/Identity:output:08text_vectorization/RaggedToTensor/default_value:output:0`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat:output:0*
T0	*
Tindex0	*
Tshape0	*(
_output_shapes
:??????????*
num_row_partition_tensors*%
row_partition_types

ROW_SPLITS28
6text_vectorization/RaggedToTensor/RaggedTensorToTensor?
sequential/CastCast?text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0*

DstT0*

SrcT0	*(
_output_shapes
:??????????2
sequential/Cast?
sequential/embedding/CastCastsequential/Cast:y:0*

DstT0*

SrcT0*(
_output_shapes
:??????????2
sequential/embedding/Cast?
%sequential/embedding/embedding_lookupResourceGather-sequential_embedding_embedding_lookup_1815380sequential/embedding/Cast:y:0",/job:localhost/replica:0/task:0/device:GPU:0*
Tindices0*@
_class6
42loc:@sequential/embedding/embedding_lookup/1815380*,
_output_shapes
:?????????? *
dtype02'
%sequential/embedding/embedding_lookup?
.sequential/embedding/embedding_lookup/IdentityIdentity.sequential/embedding/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*@
_class6
42loc:@sequential/embedding/embedding_lookup/1815380*,
_output_shapes
:?????????? 20
.sequential/embedding/embedding_lookup/Identity?
0sequential/embedding/embedding_lookup/Identity_1Identity7sequential/embedding/embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:?????????? 22
0sequential/embedding/embedding_lookup/Identity_1?
sequential/dropout/IdentityIdentity9sequential/embedding/embedding_lookup/Identity_1:output:0*
T0*,
_output_shapes
:?????????? 2
sequential/dropout/Identity?
:sequential/global_average_pooling1d/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2<
:sequential/global_average_pooling1d/Mean/reduction_indices?
(sequential/global_average_pooling1d/MeanMean$sequential/dropout/Identity:output:0Csequential/global_average_pooling1d/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:????????? 2*
(sequential/global_average_pooling1d/Mean?
sequential/dropout_1/IdentityIdentity1sequential/global_average_pooling1d/Mean:output:0*
T0*'
_output_shapes
:????????? 2
sequential/dropout_1/Identity?
&sequential/dense/MatMul/ReadVariableOpReadVariableOp/sequential_dense_matmul_readvariableop_resource*
_output_shapes

:  *
dtype02(
&sequential/dense/MatMul/ReadVariableOp?
sequential/dense/MatMulMatMul&sequential/dropout_1/Identity:output:0.sequential/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
sequential/dense/MatMul?
'sequential/dense/BiasAdd/ReadVariableOpReadVariableOp0sequential_dense_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02)
'sequential/dense/BiasAdd/ReadVariableOp?
sequential/dense/BiasAddBiasAdd!sequential/dense/MatMul:product:0/sequential/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
sequential/dense/BiasAdd?
sequential/dense/ReluRelu!sequential/dense/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
sequential/dense/Relu?
sequential/dropout_2/IdentityIdentity#sequential/dense/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
sequential/dropout_2/Identity?
(sequential/dense_1/MatMul/ReadVariableOpReadVariableOp1sequential_dense_1_matmul_readvariableop_resource*
_output_shapes

: *
dtype02*
(sequential/dense_1/MatMul/ReadVariableOp?
sequential/dense_1/MatMulMatMul&sequential/dropout_2/Identity:output:00sequential/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
sequential/dense_1/MatMul?
)sequential/dense_1/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02+
)sequential/dense_1/BiasAdd/ReadVariableOp?
sequential/dense_1/BiasAddBiasAdd#sequential/dense_1/MatMul:product:01sequential/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
sequential/dense_1/BiasAdd?
activation/SigmoidSigmoid#sequential/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
activation/Sigmoidq
IdentityIdentityactivation/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp(^sequential/dense/BiasAdd/ReadVariableOp'^sequential/dense/MatMul/ReadVariableOp*^sequential/dense_1/BiasAdd/ReadVariableOp)^sequential/dense_1/MatMul/ReadVariableOp&^sequential/embedding/embedding_lookup?^text_vectorization/string_lookup/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : : : : : : 2R
'sequential/dense/BiasAdd/ReadVariableOp'sequential/dense/BiasAdd/ReadVariableOp2P
&sequential/dense/MatMul/ReadVariableOp&sequential/dense/MatMul/ReadVariableOp2V
)sequential/dense_1/BiasAdd/ReadVariableOp)sequential/dense_1/BiasAdd/ReadVariableOp2T
(sequential/dense_1/MatMul/ReadVariableOp(sequential/dense_1/MatMul/ReadVariableOp2N
%sequential/embedding/embedding_lookup%sequential/embedding/embedding_lookup2?
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
?
+__inference_embedding_layer_call_fn_1815847

inputs
unknown:	?N 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :?????????????????? *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_embedding_layer_call_and_return_conditional_losses_18145422
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :?????????????????? 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:??????????????????: 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????????????
 
_user_specified_nameinputs
?
?
__inference_save_fn_1816041
checkpoint_keyP
Lmutablehashtable_lookup_table_export_values_lookuptableexportv2_table_handle
identity

identity_1

identity_2

identity_3

identity_4

identity_5	???MutableHashTable_lookup_table_export_values/LookupTableExportV2?
?MutableHashTable_lookup_table_export_values/LookupTableExportV2LookupTableExportV2Lmutablehashtable_lookup_table_export_values_lookuptableexportv2_table_handle",/job:localhost/replica:0/task:0/device:CPU:0*
Tkeys0*
Tvalues0	*
_output_shapes

::2A
?MutableHashTable_lookup_table_export_values/LookupTableExportV2T
add/yConst*
_output_shapes
: *
dtype0*
valueB B-keys2
add/yR
addAddcheckpoint_keyadd/y:output:0*
T0*
_output_shapes
: 2
addZ
add_1/yConst*
_output_shapes
: *
dtype0*
valueB B-values2	
add_1/yX
add_1Addcheckpoint_keyadd_1/y:output:0*
T0*
_output_shapes
: 2
add_1Q
IdentityIdentityadd:z:0^NoOp*
T0*
_output_shapes
: 2

IdentityO
ConstConst*
_output_shapes
: *
dtype0*
valueB B 2
Const\

Identity_1IdentityConst:output:0^NoOp*
T0*
_output_shapes
: 2

Identity_1?

Identity_2IdentityFMutableHashTable_lookup_table_export_values/LookupTableExportV2:keys:0^NoOp*
T0*
_output_shapes
:2

Identity_2W

Identity_3Identity	add_1:z:0^NoOp*
T0*
_output_shapes
: 2

Identity_3S
Const_1Const*
_output_shapes
: *
dtype0*
valueB B 2	
Const_1^

Identity_4IdentityConst_1:output:0^NoOp*
T0*
_output_shapes
: 2

Identity_4?

Identity_5IdentityHMutableHashTable_lookup_table_export_values/LookupTableExportV2:values:0^NoOp*
T0	*
_output_shapes
:2

Identity_5?
NoOpNoOp@^MutableHashTable_lookup_table_export_values/LookupTableExportV2*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : 2?
?MutableHashTable_lookup_table_export_values/LookupTableExportV2?MutableHashTable_lookup_table_export_values/LookupTableExportV2:F B

_output_shapes
: 
(
_user_specified_namecheckpoint_key
?
V
:__inference_global_average_pooling1d_layer_call_fn_1815891

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *^
fYRW
U__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_18145112
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:??????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'???????????????????????????:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
?
d
+__inference_dropout_2_layer_call_fn_1815970

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_2_layer_call_and_return_conditional_losses_18146512
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:????????? 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
<
__inference__creator_1815994
identity??
hash_tabley

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name185*
value_dtype0	2

hash_tablec
IdentityIdentityhash_table:table_handle:0^NoOp*
T0*
_output_shapes
: 2

Identity[
NoOpNoOp^hash_table*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 2

hash_table
hash_table
?
?
,__inference_sequential_layer_call_fn_1815820

inputs	
unknown:	?N 
	unknown_0:  
	unknown_1: 
	unknown_2: 
	unknown_3:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*'
_read_only_resource_inputs	
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_sequential_layer_call_and_return_conditional_losses_18150282
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:??????????: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
e
F__inference_dropout_1_layer_call_and_return_conditional_losses_1815913

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:????????? 2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:????????? 2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:????????? :O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
d
F__inference_dropout_2_layer_call_and_return_conditional_losses_1815948

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:????????? 2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:????????? 2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:????????? :O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
G__inference_sequential_layer_call_and_return_conditional_losses_1814608

inputs$
embedding_1814543:	?N 
dense_1814579:  
dense_1814581: !
dense_1_1814602: 
dense_1_1814604:
identity??dense/StatefulPartitionedCall?dense_1/StatefulPartitionedCall?!embedding/StatefulPartitionedCall?
!embedding/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_1814543*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :?????????????????? *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_embedding_layer_call_and_return_conditional_losses_18145422#
!embedding/StatefulPartitionedCall?
dropout/PartitionedCallPartitionedCall*embedding/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :?????????????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dropout_layer_call_and_return_conditional_losses_18145512
dropout/PartitionedCall?
(global_average_pooling1d/PartitionedCallPartitionedCall dropout/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *^
fYRW
U__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_18145582*
(global_average_pooling1d/PartitionedCall?
dropout_1/PartitionedCallPartitionedCall1global_average_pooling1d/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_1_layer_call_and_return_conditional_losses_18145652
dropout_1/PartitionedCall?
dense/StatefulPartitionedCallStatefulPartitionedCall"dropout_1/PartitionedCall:output:0dense_1814579dense_1814581*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_layer_call_and_return_conditional_losses_18145782
dense/StatefulPartitionedCall?
dropout_2/PartitionedCallPartitionedCall&dense/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_2_layer_call_and_return_conditional_losses_18145892
dropout_2/PartitionedCall?
dense_1/StatefulPartitionedCallStatefulPartitionedCall"dropout_2/PartitionedCall:output:0dense_1_1814602dense_1_1814604*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_1_layer_call_and_return_conditional_losses_18146012!
dense_1/StatefulPartitionedCall?
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall"^embedding/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall:X T
0
_output_shapes
:??????????????????
 
_user_specified_nameinputs
?	
?
,__inference_sequential_layer_call_fn_1814789
embedding_input
unknown:	?N 
	unknown_0:  
	unknown_1: 
	unknown_2: 
	unknown_3:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallembedding_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*'
_read_only_resource_inputs	
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_sequential_layer_call_and_return_conditional_losses_18147612
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:a ]
0
_output_shapes
:??????????????????
)
_user_specified_nameembedding_input
?
?
B__inference_dense_layer_call_and_return_conditional_losses_1814578

inputs0
matmul_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:  *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
Relum
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?

?
.__inference_sequential_1_layer_call_fn_1815174
input_1
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3:	?N 
	unknown_4:  
	unknown_5: 
	unknown_6: 
	unknown_7:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*'
_read_only_resource_inputs	
	*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_sequential_1_layer_call_and_return_conditional_losses_18151302
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_1:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
?
__inference_<lambda>_18160576
2key_value_init184_lookuptableimportv2_table_handle.
*key_value_init184_lookuptableimportv2_keys0
,key_value_init184_lookuptableimportv2_values	
identity??%key_value_init184/LookupTableImportV2?
%key_value_init184/LookupTableImportV2LookupTableImportV22key_value_init184_lookuptableimportv2_table_handle*key_value_init184_lookuptableimportv2_keys,key_value_init184_lookuptableimportv2_values*	
Tin0*

Tout0	*
_output_shapes
 2'
%key_value_init184/LookupTableImportV2S
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
ConstX
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: 2

Identityv
NoOpNoOp&^key_value_init184/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
: :?N:?N2N
%key_value_init184/LookupTableImportV2%key_value_init184/LookupTableImportV2:!

_output_shapes	
:?N:!

_output_shapes	
:?N
?
?
,__inference_sequential_layer_call_fn_1815805

inputs	
unknown:	?N 
	unknown_0:  
	unknown_1: 
	unknown_2: 
	unknown_3:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*'
_read_only_resource_inputs	
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_sequential_layer_call_and_return_conditional_losses_18149142
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:??????????: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
b
D__inference_dropout_layer_call_and_return_conditional_losses_1814551

inputs

identity_1g
IdentityIdentityinputs*
T0*4
_output_shapes"
 :?????????????????? 2

Identityv

Identity_1IdentityIdentity:output:0*
T0*4
_output_shapes"
 :?????????????????? 2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :?????????????????? :\ X
4
_output_shapes"
 :?????????????????? 
 
_user_specified_nameinputs
?	
?
__inference_restore_fn_1816049
restored_tensors_0
restored_tensors_1	C
?mutablehashtable_table_restore_lookuptableimportv2_table_handle
identity??2MutableHashTable_table_restore/LookupTableImportV2?
2MutableHashTable_table_restore/LookupTableImportV2LookupTableImportV2?mutablehashtable_table_restore_lookuptableimportv2_table_handlerestored_tensors_0restored_tensors_1",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0*

Tout0	*
_output_shapes
 24
2MutableHashTable_table_restore/LookupTableImportV2P
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
ConstX
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: 2

Identity?
NoOpNoOp3^MutableHashTable_table_restore/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes

::: 2h
2MutableHashTable_table_restore/LookupTableImportV22MutableHashTable_table_restore/LookupTableImportV2:L H

_output_shapes
:
,
_user_specified_namerestored_tensors_0:LH

_output_shapes
:
,
_user_specified_namerestored_tensors_1
?y
?
I__inference_sequential_1_layer_call_and_return_conditional_losses_1815238
input_1O
Ktext_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handleP
Ltext_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value	,
(text_vectorization_string_lookup_equal_y/
+text_vectorization_string_lookup_selectv2_t	%
sequential_1815225:	?N $
sequential_1815227:   
sequential_1815229: $
sequential_1815231:  
sequential_1815233:
identity??"sequential/StatefulPartitionedCall?>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2?
text_vectorization/StringLowerStringLowerinput_1*'
_output_shapes
:?????????2 
text_vectorization/StringLower?
%text_vectorization/StaticRegexReplaceStaticRegexReplace'text_vectorization/StringLower:output:0*'
_output_shapes
:?????????*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite 2'
%text_vectorization/StaticRegexReplace?
text_vectorization/SqueezeSqueeze.text_vectorization/StaticRegexReplace:output:0*
T0*#
_output_shapes
:?????????*
squeeze_dims

?????????2
text_vectorization/Squeeze?
$text_vectorization/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B 2&
$text_vectorization/StringSplit/Const?
,text_vectorization/StringSplit/StringSplitV2StringSplitV2#text_vectorization/Squeeze:output:0-text_vectorization/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:2.
,text_vectorization/StringSplit/StringSplitV2?
2text_vectorization/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        24
2text_vectorization/StringSplit/strided_slice/stack?
4text_vectorization/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       26
4text_vectorization/StringSplit/strided_slice/stack_1?
4text_vectorization/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      26
4text_vectorization/StringSplit/strided_slice/stack_2?
,text_vectorization/StringSplit/strided_sliceStridedSlice6text_vectorization/StringSplit/StringSplitV2:indices:0;text_vectorization/StringSplit/strided_slice/stack:output:0=text_vectorization/StringSplit/strided_slice/stack_1:output:0=text_vectorization/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2.
,text_vectorization/StringSplit/strided_slice?
4text_vectorization/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 26
4text_vectorization/StringSplit/strided_slice_1/stack?
6text_vectorization/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:28
6text_vectorization/StringSplit/strided_slice_1/stack_1?
6text_vectorization/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:28
6text_vectorization/StringSplit/strided_slice_1/stack_2?
.text_vectorization/StringSplit/strided_slice_1StridedSlice4text_vectorization/StringSplit/StringSplitV2:shape:0=text_vectorization/StringSplit/strided_slice_1/stack:output:0?text_vectorization/StringSplit/strided_slice_1/stack_1:output:0?text_vectorization/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask20
.text_vectorization/StringSplit/strided_slice_1?
Utext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast5text_vectorization/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:?????????2W
Utext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast7text_vectorization/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: 2Y
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapeYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:2a
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2a
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdhtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: 2`
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod?
ctext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : 2e
ctext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreatergtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ltext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: 2c
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastetext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: 2`
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2c
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: 2_
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :2a
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2ftext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: 2_
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulbtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: 2_
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: 2c
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: 2c
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 2c
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2?
btext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:?????????2d
btext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount?
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : 2^
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumitext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:?????????2Y
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum?
`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R 2b
`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0?
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2^
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2itext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:?????????2Y
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat?
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2LookupTableFindV2Ktext_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handle5text_vectorization/StringSplit/StringSplitV2:values:0Ltext_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:?????????2@
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2?
&text_vectorization/string_lookup/EqualEqual5text_vectorization/StringSplit/StringSplitV2:values:0(text_vectorization_string_lookup_equal_y*
T0*#
_output_shapes
:?????????2(
&text_vectorization/string_lookup/Equal?
)text_vectorization/string_lookup/SelectV2SelectV2*text_vectorization/string_lookup/Equal:z:0+text_vectorization_string_lookup_selectv2_tGtext_vectorization/string_lookup/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:?????????2+
)text_vectorization/string_lookup/SelectV2?
)text_vectorization/string_lookup/IdentityIdentity2text_vectorization/string_lookup/SelectV2:output:0*
T0	*#
_output_shapes
:?????????2+
)text_vectorization/string_lookup/Identity?
/text_vectorization/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R 21
/text_vectorization/RaggedToTensor/default_value?
'text_vectorization/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"?????????       2)
'text_vectorization/RaggedToTensor/Const?
6text_vectorization/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor0text_vectorization/RaggedToTensor/Const:output:02text_vectorization/string_lookup/Identity:output:08text_vectorization/RaggedToTensor/default_value:output:0`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat:output:0*
T0	*
Tindex0	*
Tshape0	*(
_output_shapes
:??????????*
num_row_partition_tensors*%
row_partition_types

ROW_SPLITS28
6text_vectorization/RaggedToTensor/RaggedTensorToTensor?
"sequential/StatefulPartitionedCallStatefulPartitionedCall?text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0sequential_1815225sequential_1815227sequential_1815229sequential_1815231sequential_1815233*
Tin

2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*'
_read_only_resource_inputs	
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_sequential_layer_call_and_return_conditional_losses_18149142$
"sequential/StatefulPartitionedCall?
activation/PartitionedCallPartitionedCall+sequential/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_activation_layer_call_and_return_conditional_losses_18149312
activation/PartitionedCall~
IdentityIdentity#activation/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp#^sequential/StatefulPartitionedCall?^text_vectorization/string_lookup/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : : : : : : 2H
"sequential/StatefulPartitionedCall"sequential/StatefulPartitionedCall2?
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_1:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
.
__inference__destroyer_1816022
identityP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
ConstQ
IdentityIdentityConst:output:0*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
?$
?
G__inference_sequential_layer_call_and_return_conditional_losses_1815710

inputs	5
"embedding_embedding_lookup_1815686:	?N 6
$dense_matmul_readvariableop_resource:  3
%dense_biasadd_readvariableop_resource: 8
&dense_1_matmul_readvariableop_resource: 5
'dense_1_biasadd_readvariableop_resource:
identity??dense/BiasAdd/ReadVariableOp?dense/MatMul/ReadVariableOp?dense_1/BiasAdd/ReadVariableOp?dense_1/MatMul/ReadVariableOp?embedding/embedding_lookup^
CastCastinputs*

DstT0*

SrcT0	*(
_output_shapes
:??????????2
Castt
embedding/CastCastCast:y:0*

DstT0*

SrcT0*(
_output_shapes
:??????????2
embedding/Cast?
embedding/embedding_lookupResourceGather"embedding_embedding_lookup_1815686embedding/Cast:y:0",/job:localhost/replica:0/task:0/device:GPU:0*
Tindices0*5
_class+
)'loc:@embedding/embedding_lookup/1815686*,
_output_shapes
:?????????? *
dtype02
embedding/embedding_lookup?
#embedding/embedding_lookup/IdentityIdentity#embedding/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*5
_class+
)'loc:@embedding/embedding_lookup/1815686*,
_output_shapes
:?????????? 2%
#embedding/embedding_lookup/Identity?
%embedding/embedding_lookup/Identity_1Identity,embedding/embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:?????????? 2'
%embedding/embedding_lookup/Identity_1?
dropout/IdentityIdentity.embedding/embedding_lookup/Identity_1:output:0*
T0*,
_output_shapes
:?????????? 2
dropout/Identity?
/global_average_pooling1d/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :21
/global_average_pooling1d/Mean/reduction_indices?
global_average_pooling1d/MeanMeandropout/Identity:output:08global_average_pooling1d/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:????????? 2
global_average_pooling1d/Mean?
dropout_1/IdentityIdentity&global_average_pooling1d/Mean:output:0*
T0*'
_output_shapes
:????????? 2
dropout_1/Identity?
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes

:  *
dtype02
dense/MatMul/ReadVariableOp?
dense/MatMulMatMuldropout_1/Identity:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
dense/MatMul?
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02
dense/BiasAdd/ReadVariableOp?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
dense/BiasAddj

dense/ReluReludense/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2

dense/Relu?
dropout_2/IdentityIdentitydense/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
dropout_2/Identity?
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes

: *
dtype02
dense_1/MatMul/ReadVariableOp?
dense_1/MatMulMatMuldropout_2/Identity:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_1/MatMul?
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_1/BiasAdd/ReadVariableOp?
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_1/BiasAdds
IdentityIdentitydense_1/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^embedding/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:??????????: : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp28
embedding/embedding_lookupembedding/embedding_lookup:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
e
F__inference_dropout_2_layer_call_and_return_conditional_losses_1814651

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:????????? 2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:????????? 2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:????????? :O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
q
U__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_1815880

inputs
identityr
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Mean/reduction_indicesx
MeanMeaninputsMean/reduction_indices:output:0*
T0*0
_output_shapes
:??????????????????2
Meanj
IdentityIdentityMean:output:0*
T0*0
_output_shapes
:??????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'???????????????????????????:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
?$
?
G__inference_sequential_layer_call_and_return_conditional_losses_1814914

inputs	5
"embedding_embedding_lookup_1814890:	?N 6
$dense_matmul_readvariableop_resource:  3
%dense_biasadd_readvariableop_resource: 8
&dense_1_matmul_readvariableop_resource: 5
'dense_1_biasadd_readvariableop_resource:
identity??dense/BiasAdd/ReadVariableOp?dense/MatMul/ReadVariableOp?dense_1/BiasAdd/ReadVariableOp?dense_1/MatMul/ReadVariableOp?embedding/embedding_lookup^
CastCastinputs*

DstT0*

SrcT0	*(
_output_shapes
:??????????2
Castt
embedding/CastCastCast:y:0*

DstT0*

SrcT0*(
_output_shapes
:??????????2
embedding/Cast?
embedding/embedding_lookupResourceGather"embedding_embedding_lookup_1814890embedding/Cast:y:0",/job:localhost/replica:0/task:0/device:GPU:0*
Tindices0*5
_class+
)'loc:@embedding/embedding_lookup/1814890*,
_output_shapes
:?????????? *
dtype02
embedding/embedding_lookup?
#embedding/embedding_lookup/IdentityIdentity#embedding/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*5
_class+
)'loc:@embedding/embedding_lookup/1814890*,
_output_shapes
:?????????? 2%
#embedding/embedding_lookup/Identity?
%embedding/embedding_lookup/Identity_1Identity,embedding/embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:?????????? 2'
%embedding/embedding_lookup/Identity_1?
dropout/IdentityIdentity.embedding/embedding_lookup/Identity_1:output:0*
T0*,
_output_shapes
:?????????? 2
dropout/Identity?
/global_average_pooling1d/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :21
/global_average_pooling1d/Mean/reduction_indices?
global_average_pooling1d/MeanMeandropout/Identity:output:08global_average_pooling1d/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:????????? 2
global_average_pooling1d/Mean?
dropout_1/IdentityIdentity&global_average_pooling1d/Mean:output:0*
T0*'
_output_shapes
:????????? 2
dropout_1/Identity?
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes

:  *
dtype02
dense/MatMul/ReadVariableOp?
dense/MatMulMatMuldropout_1/Identity:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
dense/MatMul?
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02
dense/BiasAdd/ReadVariableOp?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
dense/BiasAddj

dense/ReluReludense/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2

dense/Relu?
dropout_2/IdentityIdentitydense/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
dropout_2/Identity?
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes

: *
dtype02
dense_1/MatMul/ReadVariableOp?
dense_1/MatMulMatMuldropout_2/Identity:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_1/MatMul?
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_1/BiasAdd/ReadVariableOp?
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_1/BiasAdds
IdentityIdentitydense_1/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^embedding/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:??????????: : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp28
embedding/embedding_lookupembedding/embedding_lookup:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
%__inference_signature_wrapper_1815327
input_1
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3:	?N 
	unknown_4:  
	unknown_5: 
	unknown_6: 
	unknown_7:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*'
_read_only_resource_inputs	
	*0
config_proto 

CPU

GPU2*0J 8? *+
f&R$
"__inference__wrapped_model_18145012
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_1:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
G
+__inference_dropout_1_layer_call_fn_1815918

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_1_layer_call_and_return_conditional_losses_18145652
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:????????? :O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
??
?
I__inference_sequential_1_layer_call_and_return_conditional_losses_1815504

inputsO
Ktext_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handleP
Ltext_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value	,
(text_vectorization_string_lookup_equal_y/
+text_vectorization_string_lookup_selectv2_t	@
-sequential_embedding_embedding_lookup_1815458:	?N A
/sequential_dense_matmul_readvariableop_resource:  >
0sequential_dense_biasadd_readvariableop_resource: C
1sequential_dense_1_matmul_readvariableop_resource: @
2sequential_dense_1_biasadd_readvariableop_resource:
identity??'sequential/dense/BiasAdd/ReadVariableOp?&sequential/dense/MatMul/ReadVariableOp?)sequential/dense_1/BiasAdd/ReadVariableOp?(sequential/dense_1/MatMul/ReadVariableOp?%sequential/embedding/embedding_lookup?>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2?
text_vectorization/StringLowerStringLowerinputs*'
_output_shapes
:?????????2 
text_vectorization/StringLower?
%text_vectorization/StaticRegexReplaceStaticRegexReplace'text_vectorization/StringLower:output:0*'
_output_shapes
:?????????*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite 2'
%text_vectorization/StaticRegexReplace?
text_vectorization/SqueezeSqueeze.text_vectorization/StaticRegexReplace:output:0*
T0*#
_output_shapes
:?????????*
squeeze_dims

?????????2
text_vectorization/Squeeze?
$text_vectorization/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B 2&
$text_vectorization/StringSplit/Const?
,text_vectorization/StringSplit/StringSplitV2StringSplitV2#text_vectorization/Squeeze:output:0-text_vectorization/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:2.
,text_vectorization/StringSplit/StringSplitV2?
2text_vectorization/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        24
2text_vectorization/StringSplit/strided_slice/stack?
4text_vectorization/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       26
4text_vectorization/StringSplit/strided_slice/stack_1?
4text_vectorization/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      26
4text_vectorization/StringSplit/strided_slice/stack_2?
,text_vectorization/StringSplit/strided_sliceStridedSlice6text_vectorization/StringSplit/StringSplitV2:indices:0;text_vectorization/StringSplit/strided_slice/stack:output:0=text_vectorization/StringSplit/strided_slice/stack_1:output:0=text_vectorization/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2.
,text_vectorization/StringSplit/strided_slice?
4text_vectorization/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 26
4text_vectorization/StringSplit/strided_slice_1/stack?
6text_vectorization/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:28
6text_vectorization/StringSplit/strided_slice_1/stack_1?
6text_vectorization/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:28
6text_vectorization/StringSplit/strided_slice_1/stack_2?
.text_vectorization/StringSplit/strided_slice_1StridedSlice4text_vectorization/StringSplit/StringSplitV2:shape:0=text_vectorization/StringSplit/strided_slice_1/stack:output:0?text_vectorization/StringSplit/strided_slice_1/stack_1:output:0?text_vectorization/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask20
.text_vectorization/StringSplit/strided_slice_1?
Utext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast5text_vectorization/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:?????????2W
Utext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast7text_vectorization/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: 2Y
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapeYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:2a
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2a
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdhtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: 2`
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod?
ctext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : 2e
ctext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreatergtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ltext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: 2c
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastetext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: 2`
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2c
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: 2_
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :2a
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2ftext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: 2_
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulbtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: 2_
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: 2c
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: 2c
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 2c
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2?
btext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:?????????2d
btext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount?
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : 2^
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumitext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:?????????2Y
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum?
`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R 2b
`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0?
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2^
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2itext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:?????????2Y
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat?
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2LookupTableFindV2Ktext_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handle5text_vectorization/StringSplit/StringSplitV2:values:0Ltext_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:?????????2@
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2?
&text_vectorization/string_lookup/EqualEqual5text_vectorization/StringSplit/StringSplitV2:values:0(text_vectorization_string_lookup_equal_y*
T0*#
_output_shapes
:?????????2(
&text_vectorization/string_lookup/Equal?
)text_vectorization/string_lookup/SelectV2SelectV2*text_vectorization/string_lookup/Equal:z:0+text_vectorization_string_lookup_selectv2_tGtext_vectorization/string_lookup/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:?????????2+
)text_vectorization/string_lookup/SelectV2?
)text_vectorization/string_lookup/IdentityIdentity2text_vectorization/string_lookup/SelectV2:output:0*
T0	*#
_output_shapes
:?????????2+
)text_vectorization/string_lookup/Identity?
/text_vectorization/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R 21
/text_vectorization/RaggedToTensor/default_value?
'text_vectorization/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"?????????       2)
'text_vectorization/RaggedToTensor/Const?
6text_vectorization/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor0text_vectorization/RaggedToTensor/Const:output:02text_vectorization/string_lookup/Identity:output:08text_vectorization/RaggedToTensor/default_value:output:0`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat:output:0*
T0	*
Tindex0	*
Tshape0	*(
_output_shapes
:??????????*
num_row_partition_tensors*%
row_partition_types

ROW_SPLITS28
6text_vectorization/RaggedToTensor/RaggedTensorToTensor?
sequential/CastCast?text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0*

DstT0*

SrcT0	*(
_output_shapes
:??????????2
sequential/Cast?
sequential/embedding/CastCastsequential/Cast:y:0*

DstT0*

SrcT0*(
_output_shapes
:??????????2
sequential/embedding/Cast?
%sequential/embedding/embedding_lookupResourceGather-sequential_embedding_embedding_lookup_1815458sequential/embedding/Cast:y:0",/job:localhost/replica:0/task:0/device:GPU:0*
Tindices0*@
_class6
42loc:@sequential/embedding/embedding_lookup/1815458*,
_output_shapes
:?????????? *
dtype02'
%sequential/embedding/embedding_lookup?
.sequential/embedding/embedding_lookup/IdentityIdentity.sequential/embedding/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*@
_class6
42loc:@sequential/embedding/embedding_lookup/1815458*,
_output_shapes
:?????????? 20
.sequential/embedding/embedding_lookup/Identity?
0sequential/embedding/embedding_lookup/Identity_1Identity7sequential/embedding/embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:?????????? 22
0sequential/embedding/embedding_lookup/Identity_1?
 sequential/dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2"
 sequential/dropout/dropout/Const?
sequential/dropout/dropout/MulMul9sequential/embedding/embedding_lookup/Identity_1:output:0)sequential/dropout/dropout/Const:output:0*
T0*,
_output_shapes
:?????????? 2 
sequential/dropout/dropout/Mul?
 sequential/dropout/dropout/ShapeShape9sequential/embedding/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:2"
 sequential/dropout/dropout/Shape?
7sequential/dropout/dropout/random_uniform/RandomUniformRandomUniform)sequential/dropout/dropout/Shape:output:0*
T0*,
_output_shapes
:?????????? *
dtype029
7sequential/dropout/dropout/random_uniform/RandomUniform?
)sequential/dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2+
)sequential/dropout/dropout/GreaterEqual/y?
'sequential/dropout/dropout/GreaterEqualGreaterEqual@sequential/dropout/dropout/random_uniform/RandomUniform:output:02sequential/dropout/dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:?????????? 2)
'sequential/dropout/dropout/GreaterEqual?
sequential/dropout/dropout/CastCast+sequential/dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:?????????? 2!
sequential/dropout/dropout/Cast?
 sequential/dropout/dropout/Mul_1Mul"sequential/dropout/dropout/Mul:z:0#sequential/dropout/dropout/Cast:y:0*
T0*,
_output_shapes
:?????????? 2"
 sequential/dropout/dropout/Mul_1?
:sequential/global_average_pooling1d/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2<
:sequential/global_average_pooling1d/Mean/reduction_indices?
(sequential/global_average_pooling1d/MeanMean$sequential/dropout/dropout/Mul_1:z:0Csequential/global_average_pooling1d/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:????????? 2*
(sequential/global_average_pooling1d/Mean?
"sequential/dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2$
"sequential/dropout_1/dropout/Const?
 sequential/dropout_1/dropout/MulMul1sequential/global_average_pooling1d/Mean:output:0+sequential/dropout_1/dropout/Const:output:0*
T0*'
_output_shapes
:????????? 2"
 sequential/dropout_1/dropout/Mul?
"sequential/dropout_1/dropout/ShapeShape1sequential/global_average_pooling1d/Mean:output:0*
T0*
_output_shapes
:2$
"sequential/dropout_1/dropout/Shape?
9sequential/dropout_1/dropout/random_uniform/RandomUniformRandomUniform+sequential/dropout_1/dropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype02;
9sequential/dropout_1/dropout/random_uniform/RandomUniform?
+sequential/dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2-
+sequential/dropout_1/dropout/GreaterEqual/y?
)sequential/dropout_1/dropout/GreaterEqualGreaterEqualBsequential/dropout_1/dropout/random_uniform/RandomUniform:output:04sequential/dropout_1/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2+
)sequential/dropout_1/dropout/GreaterEqual?
!sequential/dropout_1/dropout/CastCast-sequential/dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2#
!sequential/dropout_1/dropout/Cast?
"sequential/dropout_1/dropout/Mul_1Mul$sequential/dropout_1/dropout/Mul:z:0%sequential/dropout_1/dropout/Cast:y:0*
T0*'
_output_shapes
:????????? 2$
"sequential/dropout_1/dropout/Mul_1?
&sequential/dense/MatMul/ReadVariableOpReadVariableOp/sequential_dense_matmul_readvariableop_resource*
_output_shapes

:  *
dtype02(
&sequential/dense/MatMul/ReadVariableOp?
sequential/dense/MatMulMatMul&sequential/dropout_1/dropout/Mul_1:z:0.sequential/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
sequential/dense/MatMul?
'sequential/dense/BiasAdd/ReadVariableOpReadVariableOp0sequential_dense_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02)
'sequential/dense/BiasAdd/ReadVariableOp?
sequential/dense/BiasAddBiasAdd!sequential/dense/MatMul:product:0/sequential/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
sequential/dense/BiasAdd?
sequential/dense/ReluRelu!sequential/dense/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
sequential/dense/Relu?
"sequential/dropout_2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2$
"sequential/dropout_2/dropout/Const?
 sequential/dropout_2/dropout/MulMul#sequential/dense/Relu:activations:0+sequential/dropout_2/dropout/Const:output:0*
T0*'
_output_shapes
:????????? 2"
 sequential/dropout_2/dropout/Mul?
"sequential/dropout_2/dropout/ShapeShape#sequential/dense/Relu:activations:0*
T0*
_output_shapes
:2$
"sequential/dropout_2/dropout/Shape?
9sequential/dropout_2/dropout/random_uniform/RandomUniformRandomUniform+sequential/dropout_2/dropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype02;
9sequential/dropout_2/dropout/random_uniform/RandomUniform?
+sequential/dropout_2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2-
+sequential/dropout_2/dropout/GreaterEqual/y?
)sequential/dropout_2/dropout/GreaterEqualGreaterEqualBsequential/dropout_2/dropout/random_uniform/RandomUniform:output:04sequential/dropout_2/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2+
)sequential/dropout_2/dropout/GreaterEqual?
!sequential/dropout_2/dropout/CastCast-sequential/dropout_2/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2#
!sequential/dropout_2/dropout/Cast?
"sequential/dropout_2/dropout/Mul_1Mul$sequential/dropout_2/dropout/Mul:z:0%sequential/dropout_2/dropout/Cast:y:0*
T0*'
_output_shapes
:????????? 2$
"sequential/dropout_2/dropout/Mul_1?
(sequential/dense_1/MatMul/ReadVariableOpReadVariableOp1sequential_dense_1_matmul_readvariableop_resource*
_output_shapes

: *
dtype02*
(sequential/dense_1/MatMul/ReadVariableOp?
sequential/dense_1/MatMulMatMul&sequential/dropout_2/dropout/Mul_1:z:00sequential/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
sequential/dense_1/MatMul?
)sequential/dense_1/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02+
)sequential/dense_1/BiasAdd/ReadVariableOp?
sequential/dense_1/BiasAddBiasAdd#sequential/dense_1/MatMul:product:01sequential/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
sequential/dense_1/BiasAdd?
activation/SigmoidSigmoid#sequential/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
activation/Sigmoidq
IdentityIdentityactivation/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp(^sequential/dense/BiasAdd/ReadVariableOp'^sequential/dense/MatMul/ReadVariableOp*^sequential/dense_1/BiasAdd/ReadVariableOp)^sequential/dense_1/MatMul/ReadVariableOp&^sequential/embedding/embedding_lookup?^text_vectorization/string_lookup/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : : : : : : 2R
'sequential/dense/BiasAdd/ReadVariableOp'sequential/dense/BiasAdd/ReadVariableOp2P
&sequential/dense/MatMul/ReadVariableOp&sequential/dense/MatMul/ReadVariableOp2V
)sequential/dense_1/BiasAdd/ReadVariableOp)sequential/dense_1/BiasAdd/ReadVariableOp2T
(sequential/dense_1/MatMul/ReadVariableOp(sequential/dense_1/MatMul/ReadVariableOp2N
%sequential/embedding/embedding_lookup%sequential/embedding/embedding_lookup2?
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
c
D__inference_dropout_layer_call_and_return_conditional_losses_1815864

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout/Const?
dropout/MulMulinputsdropout/Const:output:0*
T0*4
_output_shapes"
 :?????????????????? 2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*4
_output_shapes"
 :?????????????????? *
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*4
_output_shapes"
 :?????????????????? 2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*4
_output_shapes"
 :?????????????????? 2
dropout/Cast?
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*4
_output_shapes"
 :?????????????????? 2
dropout/Mul_1r
IdentityIdentitydropout/Mul_1:z:0*
T0*4
_output_shapes"
 :?????????????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :?????????????????? :\ X
4
_output_shapes"
 :?????????????????? 
 
_user_specified_nameinputs
?
?
F__inference_embedding_layer_call_and_return_conditional_losses_1814542

inputs+
embedding_lookup_1814536:	?N 
identity??embedding_lookupf
CastCastinputs*

DstT0*

SrcT0*0
_output_shapes
:??????????????????2
Cast?
embedding_lookupResourceGatherembedding_lookup_1814536Cast:y:0",/job:localhost/replica:0/task:0/device:GPU:0*
Tindices0*+
_class!
loc:@embedding_lookup/1814536*4
_output_shapes"
 :?????????????????? *
dtype02
embedding_lookup?
embedding_lookup/IdentityIdentityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*+
_class!
loc:@embedding_lookup/1814536*4
_output_shapes"
 :?????????????????? 2
embedding_lookup/Identity?
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*4
_output_shapes"
 :?????????????????? 2
embedding_lookup/Identity_1?
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*4
_output_shapes"
 :?????????????????? 2

Identitya
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:??????????????????: 2$
embedding_lookupembedding_lookup:X T
0
_output_shapes
:??????????????????
 
_user_specified_nameinputs
?#
?
G__inference_sequential_layer_call_and_return_conditional_losses_1814831
embedding_input$
embedding_1814813:	?N 
dense_1814819:  
dense_1814821: !
dense_1_1814825: 
dense_1_1814827:
identity??dense/StatefulPartitionedCall?dense_1/StatefulPartitionedCall?dropout/StatefulPartitionedCall?!dropout_1/StatefulPartitionedCall?!dropout_2/StatefulPartitionedCall?!embedding/StatefulPartitionedCall?
!embedding/StatefulPartitionedCallStatefulPartitionedCallembedding_inputembedding_1814813*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :?????????????????? *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_embedding_layer_call_and_return_conditional_losses_18145422#
!embedding/StatefulPartitionedCall?
dropout/StatefulPartitionedCallStatefulPartitionedCall*embedding/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :?????????????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dropout_layer_call_and_return_conditional_losses_18147122!
dropout/StatefulPartitionedCall?
(global_average_pooling1d/PartitionedCallPartitionedCall(dropout/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *^
fYRW
U__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_18145582*
(global_average_pooling1d/PartitionedCall?
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall1global_average_pooling1d/PartitionedCall:output:0 ^dropout/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_1_layer_call_and_return_conditional_losses_18146842#
!dropout_1/StatefulPartitionedCall?
dense/StatefulPartitionedCallStatefulPartitionedCall*dropout_1/StatefulPartitionedCall:output:0dense_1814819dense_1814821*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_layer_call_and_return_conditional_losses_18145782
dense/StatefulPartitionedCall?
!dropout_2/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0"^dropout_1/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_2_layer_call_and_return_conditional_losses_18146512#
!dropout_2/StatefulPartitionedCall?
dense_1/StatefulPartitionedCallStatefulPartitionedCall*dropout_2/StatefulPartitionedCall:output:0dense_1_1814825dense_1_1814827*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_1_layer_call_and_return_conditional_losses_18146012!
dense_1/StatefulPartitionedCall?
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dropout/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall"^dropout_2/StatefulPartitionedCall"^embedding/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall2F
!dropout_2/StatefulPartitionedCall!dropout_2/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall:a ]
0
_output_shapes
:??????????????????
)
_user_specified_nameembedding_input
?

?
.__inference_sequential_1_layer_call_fn_1814955
input_1
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3:	?N 
	unknown_4:  
	unknown_5: 
	unknown_6: 
	unknown_7:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*'
_read_only_resource_inputs	
	*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_sequential_1_layer_call_and_return_conditional_losses_18149342
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_1:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?@
?
G__inference_sequential_layer_call_and_return_conditional_losses_1815681

inputs5
"embedding_embedding_lookup_1815636:	?N 6
$dense_matmul_readvariableop_resource:  3
%dense_biasadd_readvariableop_resource: 8
&dense_1_matmul_readvariableop_resource: 5
'dense_1_biasadd_readvariableop_resource:
identity??dense/BiasAdd/ReadVariableOp?dense/MatMul/ReadVariableOp?dense_1/BiasAdd/ReadVariableOp?dense_1/MatMul/ReadVariableOp?embedding/embedding_lookupz
embedding/CastCastinputs*

DstT0*

SrcT0*0
_output_shapes
:??????????????????2
embedding/Cast?
embedding/embedding_lookupResourceGather"embedding_embedding_lookup_1815636embedding/Cast:y:0",/job:localhost/replica:0/task:0/device:GPU:0*
Tindices0*5
_class+
)'loc:@embedding/embedding_lookup/1815636*4
_output_shapes"
 :?????????????????? *
dtype02
embedding/embedding_lookup?
#embedding/embedding_lookup/IdentityIdentity#embedding/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*5
_class+
)'loc:@embedding/embedding_lookup/1815636*4
_output_shapes"
 :?????????????????? 2%
#embedding/embedding_lookup/Identity?
%embedding/embedding_lookup/Identity_1Identity,embedding/embedding_lookup/Identity:output:0*
T0*4
_output_shapes"
 :?????????????????? 2'
%embedding/embedding_lookup/Identity_1s
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout/dropout/Const?
dropout/dropout/MulMul.embedding/embedding_lookup/Identity_1:output:0dropout/dropout/Const:output:0*
T0*4
_output_shapes"
 :?????????????????? 2
dropout/dropout/Mul?
dropout/dropout/ShapeShape.embedding/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:2
dropout/dropout/Shape?
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*4
_output_shapes"
 :?????????????????? *
dtype02.
,dropout/dropout/random_uniform/RandomUniform?
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2 
dropout/dropout/GreaterEqual/y?
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*4
_output_shapes"
 :?????????????????? 2
dropout/dropout/GreaterEqual?
dropout/dropout/CastCast dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*4
_output_shapes"
 :?????????????????? 2
dropout/dropout/Cast?
dropout/dropout/Mul_1Muldropout/dropout/Mul:z:0dropout/dropout/Cast:y:0*
T0*4
_output_shapes"
 :?????????????????? 2
dropout/dropout/Mul_1?
/global_average_pooling1d/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :21
/global_average_pooling1d/Mean/reduction_indices?
global_average_pooling1d/MeanMeandropout/dropout/Mul_1:z:08global_average_pooling1d/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:????????? 2
global_average_pooling1d/Meanw
dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout_1/dropout/Const?
dropout_1/dropout/MulMul&global_average_pooling1d/Mean:output:0 dropout_1/dropout/Const:output:0*
T0*'
_output_shapes
:????????? 2
dropout_1/dropout/Mul?
dropout_1/dropout/ShapeShape&global_average_pooling1d/Mean:output:0*
T0*
_output_shapes
:2
dropout_1/dropout/Shape?
.dropout_1/dropout/random_uniform/RandomUniformRandomUniform dropout_1/dropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype020
.dropout_1/dropout/random_uniform/RandomUniform?
 dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2"
 dropout_1/dropout/GreaterEqual/y?
dropout_1/dropout/GreaterEqualGreaterEqual7dropout_1/dropout/random_uniform/RandomUniform:output:0)dropout_1/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2 
dropout_1/dropout/GreaterEqual?
dropout_1/dropout/CastCast"dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
dropout_1/dropout/Cast?
dropout_1/dropout/Mul_1Muldropout_1/dropout/Mul:z:0dropout_1/dropout/Cast:y:0*
T0*'
_output_shapes
:????????? 2
dropout_1/dropout/Mul_1?
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes

:  *
dtype02
dense/MatMul/ReadVariableOp?
dense/MatMulMatMuldropout_1/dropout/Mul_1:z:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
dense/MatMul?
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02
dense/BiasAdd/ReadVariableOp?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
dense/BiasAddj

dense/ReluReludense/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2

dense/Reluw
dropout_2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout_2/dropout/Const?
dropout_2/dropout/MulMuldense/Relu:activations:0 dropout_2/dropout/Const:output:0*
T0*'
_output_shapes
:????????? 2
dropout_2/dropout/Mulz
dropout_2/dropout/ShapeShapedense/Relu:activations:0*
T0*
_output_shapes
:2
dropout_2/dropout/Shape?
.dropout_2/dropout/random_uniform/RandomUniformRandomUniform dropout_2/dropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype020
.dropout_2/dropout/random_uniform/RandomUniform?
 dropout_2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2"
 dropout_2/dropout/GreaterEqual/y?
dropout_2/dropout/GreaterEqualGreaterEqual7dropout_2/dropout/random_uniform/RandomUniform:output:0)dropout_2/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2 
dropout_2/dropout/GreaterEqual?
dropout_2/dropout/CastCast"dropout_2/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
dropout_2/dropout/Cast?
dropout_2/dropout/Mul_1Muldropout_2/dropout/Mul:z:0dropout_2/dropout/Cast:y:0*
T0*'
_output_shapes
:????????? 2
dropout_2/dropout/Mul_1?
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes

: *
dtype02
dense_1/MatMul/ReadVariableOp?
dense_1/MatMulMatMuldropout_2/dropout/Mul_1:z:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_1/MatMul?
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_1/BiasAdd/ReadVariableOp?
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_1/BiasAdds
IdentityIdentitydense_1/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^embedding/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp28
embedding/embedding_lookupembedding/embedding_lookup:X T
0
_output_shapes
:??????????????????
 
_user_specified_nameinputs
?
q
U__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_1814558

inputs
identityr
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Mean/reduction_indiceso
MeanMeaninputsMean/reduction_indices:output:0*
T0*'
_output_shapes
:????????? 2
Meana
IdentityIdentityMean:output:0*
T0*'
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :?????????????????? :\ X
4
_output_shapes"
 :?????????????????? 
 
_user_specified_nameinputs
??
?
"__inference__wrapped_model_1814501
input_1\
Xsequential_1_text_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handle]
Ysequential_1_text_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value	9
5sequential_1_text_vectorization_string_lookup_equal_y<
8sequential_1_text_vectorization_string_lookup_selectv2_t	M
:sequential_1_sequential_embedding_embedding_lookup_1814476:	?N N
<sequential_1_sequential_dense_matmul_readvariableop_resource:  K
=sequential_1_sequential_dense_biasadd_readvariableop_resource: P
>sequential_1_sequential_dense_1_matmul_readvariableop_resource: M
?sequential_1_sequential_dense_1_biasadd_readvariableop_resource:
identity??4sequential_1/sequential/dense/BiasAdd/ReadVariableOp?3sequential_1/sequential/dense/MatMul/ReadVariableOp?6sequential_1/sequential/dense_1/BiasAdd/ReadVariableOp?5sequential_1/sequential/dense_1/MatMul/ReadVariableOp?2sequential_1/sequential/embedding/embedding_lookup?Ksequential_1/text_vectorization/string_lookup/None_Lookup/LookupTableFindV2?
+sequential_1/text_vectorization/StringLowerStringLowerinput_1*'
_output_shapes
:?????????2-
+sequential_1/text_vectorization/StringLower?
2sequential_1/text_vectorization/StaticRegexReplaceStaticRegexReplace4sequential_1/text_vectorization/StringLower:output:0*'
_output_shapes
:?????????*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite 24
2sequential_1/text_vectorization/StaticRegexReplace?
'sequential_1/text_vectorization/SqueezeSqueeze;sequential_1/text_vectorization/StaticRegexReplace:output:0*
T0*#
_output_shapes
:?????????*
squeeze_dims

?????????2)
'sequential_1/text_vectorization/Squeeze?
1sequential_1/text_vectorization/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B 23
1sequential_1/text_vectorization/StringSplit/Const?
9sequential_1/text_vectorization/StringSplit/StringSplitV2StringSplitV20sequential_1/text_vectorization/Squeeze:output:0:sequential_1/text_vectorization/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:2;
9sequential_1/text_vectorization/StringSplit/StringSplitV2?
?sequential_1/text_vectorization/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2A
?sequential_1/text_vectorization/StringSplit/strided_slice/stack?
Asequential_1/text_vectorization/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2C
Asequential_1/text_vectorization/StringSplit/strided_slice/stack_1?
Asequential_1/text_vectorization/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2C
Asequential_1/text_vectorization/StringSplit/strided_slice/stack_2?
9sequential_1/text_vectorization/StringSplit/strided_sliceStridedSliceCsequential_1/text_vectorization/StringSplit/StringSplitV2:indices:0Hsequential_1/text_vectorization/StringSplit/strided_slice/stack:output:0Jsequential_1/text_vectorization/StringSplit/strided_slice/stack_1:output:0Jsequential_1/text_vectorization/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2;
9sequential_1/text_vectorization/StringSplit/strided_slice?
Asequential_1/text_vectorization/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2C
Asequential_1/text_vectorization/StringSplit/strided_slice_1/stack?
Csequential_1/text_vectorization/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2E
Csequential_1/text_vectorization/StringSplit/strided_slice_1/stack_1?
Csequential_1/text_vectorization/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2E
Csequential_1/text_vectorization/StringSplit/strided_slice_1/stack_2?
;sequential_1/text_vectorization/StringSplit/strided_slice_1StridedSliceAsequential_1/text_vectorization/StringSplit/StringSplitV2:shape:0Jsequential_1/text_vectorization/StringSplit/strided_slice_1/stack:output:0Lsequential_1/text_vectorization/StringSplit/strided_slice_1/stack_1:output:0Lsequential_1/text_vectorization/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask2=
;sequential_1/text_vectorization/StringSplit/strided_slice_1?
bsequential_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCastBsequential_1/text_vectorization/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:?????????2d
bsequential_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast?
dsequential_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1CastDsequential_1/text_vectorization/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: 2f
dsequential_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1?
lsequential_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapefsequential_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:2n
lsequential_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape?
lsequential_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2n
lsequential_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const?
ksequential_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdusequential_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0usequential_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: 2m
ksequential_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod?
psequential_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : 2r
psequential_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y?
nsequential_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreatertsequential_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ysequential_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: 2p
nsequential_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater?
ksequential_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastrsequential_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: 2m
ksequential_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast?
nsequential_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2p
nsequential_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1?
jsequential_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxfsequential_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0wsequential_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: 2l
jsequential_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max?
lsequential_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :2n
lsequential_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y?
jsequential_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2ssequential_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0usequential_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: 2l
jsequential_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add?
jsequential_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulosequential_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0nsequential_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: 2l
jsequential_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul?
nsequential_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximumhsequential_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0nsequential_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: 2p
nsequential_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum?
nsequential_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimumhsequential_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0rsequential_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: 2p
nsequential_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum?
nsequential_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 2p
nsequential_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2?
osequential_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountfsequential_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0rsequential_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0wsequential_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:?????????2q
osequential_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount?
isequential_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : 2k
isequential_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis?
dsequential_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumvsequential_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0rsequential_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:?????????2f
dsequential_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum?
msequential_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R 2o
msequential_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0?
isequential_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2k
isequential_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis?
dsequential_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2vsequential_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0jsequential_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0rsequential_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:?????????2f
dsequential_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat?
Ksequential_1/text_vectorization/string_lookup/None_Lookup/LookupTableFindV2LookupTableFindV2Xsequential_1_text_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handleBsequential_1/text_vectorization/StringSplit/StringSplitV2:values:0Ysequential_1_text_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:?????????2M
Ksequential_1/text_vectorization/string_lookup/None_Lookup/LookupTableFindV2?
3sequential_1/text_vectorization/string_lookup/EqualEqualBsequential_1/text_vectorization/StringSplit/StringSplitV2:values:05sequential_1_text_vectorization_string_lookup_equal_y*
T0*#
_output_shapes
:?????????25
3sequential_1/text_vectorization/string_lookup/Equal?
6sequential_1/text_vectorization/string_lookup/SelectV2SelectV27sequential_1/text_vectorization/string_lookup/Equal:z:08sequential_1_text_vectorization_string_lookup_selectv2_tTsequential_1/text_vectorization/string_lookup/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:?????????28
6sequential_1/text_vectorization/string_lookup/SelectV2?
6sequential_1/text_vectorization/string_lookup/IdentityIdentity?sequential_1/text_vectorization/string_lookup/SelectV2:output:0*
T0	*#
_output_shapes
:?????????28
6sequential_1/text_vectorization/string_lookup/Identity?
<sequential_1/text_vectorization/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R 2>
<sequential_1/text_vectorization/RaggedToTensor/default_value?
4sequential_1/text_vectorization/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"?????????       26
4sequential_1/text_vectorization/RaggedToTensor/Const?
Csequential_1/text_vectorization/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor=sequential_1/text_vectorization/RaggedToTensor/Const:output:0?sequential_1/text_vectorization/string_lookup/Identity:output:0Esequential_1/text_vectorization/RaggedToTensor/default_value:output:0msequential_1/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat:output:0*
T0	*
Tindex0	*
Tshape0	*(
_output_shapes
:??????????*
num_row_partition_tensors*%
row_partition_types

ROW_SPLITS2E
Csequential_1/text_vectorization/RaggedToTensor/RaggedTensorToTensor?
sequential_1/sequential/CastCastLsequential_1/text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0*

DstT0*

SrcT0	*(
_output_shapes
:??????????2
sequential_1/sequential/Cast?
&sequential_1/sequential/embedding/CastCast sequential_1/sequential/Cast:y:0*

DstT0*

SrcT0*(
_output_shapes
:??????????2(
&sequential_1/sequential/embedding/Cast?
2sequential_1/sequential/embedding/embedding_lookupResourceGather:sequential_1_sequential_embedding_embedding_lookup_1814476*sequential_1/sequential/embedding/Cast:y:0",/job:localhost/replica:0/task:0/device:GPU:0*
Tindices0*M
_classC
A?loc:@sequential_1/sequential/embedding/embedding_lookup/1814476*,
_output_shapes
:?????????? *
dtype024
2sequential_1/sequential/embedding/embedding_lookup?
;sequential_1/sequential/embedding/embedding_lookup/IdentityIdentity;sequential_1/sequential/embedding/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*M
_classC
A?loc:@sequential_1/sequential/embedding/embedding_lookup/1814476*,
_output_shapes
:?????????? 2=
;sequential_1/sequential/embedding/embedding_lookup/Identity?
=sequential_1/sequential/embedding/embedding_lookup/Identity_1IdentityDsequential_1/sequential/embedding/embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:?????????? 2?
=sequential_1/sequential/embedding/embedding_lookup/Identity_1?
(sequential_1/sequential/dropout/IdentityIdentityFsequential_1/sequential/embedding/embedding_lookup/Identity_1:output:0*
T0*,
_output_shapes
:?????????? 2*
(sequential_1/sequential/dropout/Identity?
Gsequential_1/sequential/global_average_pooling1d/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2I
Gsequential_1/sequential/global_average_pooling1d/Mean/reduction_indices?
5sequential_1/sequential/global_average_pooling1d/MeanMean1sequential_1/sequential/dropout/Identity:output:0Psequential_1/sequential/global_average_pooling1d/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:????????? 27
5sequential_1/sequential/global_average_pooling1d/Mean?
*sequential_1/sequential/dropout_1/IdentityIdentity>sequential_1/sequential/global_average_pooling1d/Mean:output:0*
T0*'
_output_shapes
:????????? 2,
*sequential_1/sequential/dropout_1/Identity?
3sequential_1/sequential/dense/MatMul/ReadVariableOpReadVariableOp<sequential_1_sequential_dense_matmul_readvariableop_resource*
_output_shapes

:  *
dtype025
3sequential_1/sequential/dense/MatMul/ReadVariableOp?
$sequential_1/sequential/dense/MatMulMatMul3sequential_1/sequential/dropout_1/Identity:output:0;sequential_1/sequential/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2&
$sequential_1/sequential/dense/MatMul?
4sequential_1/sequential/dense/BiasAdd/ReadVariableOpReadVariableOp=sequential_1_sequential_dense_biasadd_readvariableop_resource*
_output_shapes
: *
dtype026
4sequential_1/sequential/dense/BiasAdd/ReadVariableOp?
%sequential_1/sequential/dense/BiasAddBiasAdd.sequential_1/sequential/dense/MatMul:product:0<sequential_1/sequential/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2'
%sequential_1/sequential/dense/BiasAdd?
"sequential_1/sequential/dense/ReluRelu.sequential_1/sequential/dense/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2$
"sequential_1/sequential/dense/Relu?
*sequential_1/sequential/dropout_2/IdentityIdentity0sequential_1/sequential/dense/Relu:activations:0*
T0*'
_output_shapes
:????????? 2,
*sequential_1/sequential/dropout_2/Identity?
5sequential_1/sequential/dense_1/MatMul/ReadVariableOpReadVariableOp>sequential_1_sequential_dense_1_matmul_readvariableop_resource*
_output_shapes

: *
dtype027
5sequential_1/sequential/dense_1/MatMul/ReadVariableOp?
&sequential_1/sequential/dense_1/MatMulMatMul3sequential_1/sequential/dropout_2/Identity:output:0=sequential_1/sequential/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2(
&sequential_1/sequential/dense_1/MatMul?
6sequential_1/sequential/dense_1/BiasAdd/ReadVariableOpReadVariableOp?sequential_1_sequential_dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype028
6sequential_1/sequential/dense_1/BiasAdd/ReadVariableOp?
'sequential_1/sequential/dense_1/BiasAddBiasAdd0sequential_1/sequential/dense_1/MatMul:product:0>sequential_1/sequential/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2)
'sequential_1/sequential/dense_1/BiasAdd?
sequential_1/activation/SigmoidSigmoid0sequential_1/sequential/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2!
sequential_1/activation/Sigmoid~
IdentityIdentity#sequential_1/activation/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp5^sequential_1/sequential/dense/BiasAdd/ReadVariableOp4^sequential_1/sequential/dense/MatMul/ReadVariableOp7^sequential_1/sequential/dense_1/BiasAdd/ReadVariableOp6^sequential_1/sequential/dense_1/MatMul/ReadVariableOp3^sequential_1/sequential/embedding/embedding_lookupL^sequential_1/text_vectorization/string_lookup/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : : : : : : 2l
4sequential_1/sequential/dense/BiasAdd/ReadVariableOp4sequential_1/sequential/dense/BiasAdd/ReadVariableOp2j
3sequential_1/sequential/dense/MatMul/ReadVariableOp3sequential_1/sequential/dense/MatMul/ReadVariableOp2p
6sequential_1/sequential/dense_1/BiasAdd/ReadVariableOp6sequential_1/sequential/dense_1/BiasAdd/ReadVariableOp2n
5sequential_1/sequential/dense_1/MatMul/ReadVariableOp5sequential_1/sequential/dense_1/MatMul/ReadVariableOp2h
2sequential_1/sequential/embedding/embedding_lookup2sequential_1/sequential/embedding/embedding_lookup2?
Ksequential_1/text_vectorization/string_lookup/None_Lookup/LookupTableFindV2Ksequential_1/text_vectorization/string_lookup/None_Lookup/LookupTableFindV2:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_1:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?	
?
,__inference_sequential_layer_call_fn_1815790

inputs
unknown:	?N 
	unknown_0:  
	unknown_1: 
	unknown_2: 
	unknown_3:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*'
_read_only_resource_inputs	
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_sequential_layer_call_and_return_conditional_losses_18147612
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????????????
 
_user_specified_nameinputs
?
,
__inference_<lambda>_1816062
identityS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
ConstQ
IdentityIdentityConst:output:0*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
?

?
.__inference_sequential_1_layer_call_fn_1815550

inputs
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3:	?N 
	unknown_4:  
	unknown_5: 
	unknown_6: 
	unknown_7:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*'
_read_only_resource_inputs	
	*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_sequential_1_layer_call_and_return_conditional_losses_18151302
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?y
?
I__inference_sequential_1_layer_call_and_return_conditional_losses_1815130

inputsO
Ktext_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handleP
Ltext_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value	,
(text_vectorization_string_lookup_equal_y/
+text_vectorization_string_lookup_selectv2_t	%
sequential_1815117:	?N $
sequential_1815119:   
sequential_1815121: $
sequential_1815123:  
sequential_1815125:
identity??"sequential/StatefulPartitionedCall?>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2?
text_vectorization/StringLowerStringLowerinputs*'
_output_shapes
:?????????2 
text_vectorization/StringLower?
%text_vectorization/StaticRegexReplaceStaticRegexReplace'text_vectorization/StringLower:output:0*'
_output_shapes
:?????????*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite 2'
%text_vectorization/StaticRegexReplace?
text_vectorization/SqueezeSqueeze.text_vectorization/StaticRegexReplace:output:0*
T0*#
_output_shapes
:?????????*
squeeze_dims

?????????2
text_vectorization/Squeeze?
$text_vectorization/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B 2&
$text_vectorization/StringSplit/Const?
,text_vectorization/StringSplit/StringSplitV2StringSplitV2#text_vectorization/Squeeze:output:0-text_vectorization/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:2.
,text_vectorization/StringSplit/StringSplitV2?
2text_vectorization/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        24
2text_vectorization/StringSplit/strided_slice/stack?
4text_vectorization/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       26
4text_vectorization/StringSplit/strided_slice/stack_1?
4text_vectorization/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      26
4text_vectorization/StringSplit/strided_slice/stack_2?
,text_vectorization/StringSplit/strided_sliceStridedSlice6text_vectorization/StringSplit/StringSplitV2:indices:0;text_vectorization/StringSplit/strided_slice/stack:output:0=text_vectorization/StringSplit/strided_slice/stack_1:output:0=text_vectorization/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2.
,text_vectorization/StringSplit/strided_slice?
4text_vectorization/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 26
4text_vectorization/StringSplit/strided_slice_1/stack?
6text_vectorization/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:28
6text_vectorization/StringSplit/strided_slice_1/stack_1?
6text_vectorization/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:28
6text_vectorization/StringSplit/strided_slice_1/stack_2?
.text_vectorization/StringSplit/strided_slice_1StridedSlice4text_vectorization/StringSplit/StringSplitV2:shape:0=text_vectorization/StringSplit/strided_slice_1/stack:output:0?text_vectorization/StringSplit/strided_slice_1/stack_1:output:0?text_vectorization/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask20
.text_vectorization/StringSplit/strided_slice_1?
Utext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast5text_vectorization/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:?????????2W
Utext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast7text_vectorization/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: 2Y
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapeYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:2a
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2a
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdhtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: 2`
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod?
ctext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : 2e
ctext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreatergtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ltext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: 2c
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastetext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: 2`
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2c
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: 2_
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :2a
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2ftext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: 2_
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulbtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: 2_
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: 2c
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: 2c
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 2c
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2?
btext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:?????????2d
btext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount?
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : 2^
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumitext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:?????????2Y
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum?
`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R 2b
`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0?
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2^
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2itext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:?????????2Y
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat?
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2LookupTableFindV2Ktext_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handle5text_vectorization/StringSplit/StringSplitV2:values:0Ltext_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:?????????2@
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2?
&text_vectorization/string_lookup/EqualEqual5text_vectorization/StringSplit/StringSplitV2:values:0(text_vectorization_string_lookup_equal_y*
T0*#
_output_shapes
:?????????2(
&text_vectorization/string_lookup/Equal?
)text_vectorization/string_lookup/SelectV2SelectV2*text_vectorization/string_lookup/Equal:z:0+text_vectorization_string_lookup_selectv2_tGtext_vectorization/string_lookup/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:?????????2+
)text_vectorization/string_lookup/SelectV2?
)text_vectorization/string_lookup/IdentityIdentity2text_vectorization/string_lookup/SelectV2:output:0*
T0	*#
_output_shapes
:?????????2+
)text_vectorization/string_lookup/Identity?
/text_vectorization/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R 21
/text_vectorization/RaggedToTensor/default_value?
'text_vectorization/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"?????????       2)
'text_vectorization/RaggedToTensor/Const?
6text_vectorization/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor0text_vectorization/RaggedToTensor/Const:output:02text_vectorization/string_lookup/Identity:output:08text_vectorization/RaggedToTensor/default_value:output:0`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat:output:0*
T0	*
Tindex0	*
Tshape0	*(
_output_shapes
:??????????*
num_row_partition_tensors*%
row_partition_types

ROW_SPLITS28
6text_vectorization/RaggedToTensor/RaggedTensorToTensor?
"sequential/StatefulPartitionedCallStatefulPartitionedCall?text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0sequential_1815117sequential_1815119sequential_1815121sequential_1815123sequential_1815125*
Tin

2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*'
_read_only_resource_inputs	
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_sequential_layer_call_and_return_conditional_losses_18150282$
"sequential/StatefulPartitionedCall?
activation/PartitionedCallPartitionedCall+sequential/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_activation_layer_call_and_return_conditional_losses_18149312
activation/PartitionedCall~
IdentityIdentity#activation/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp#^sequential/StatefulPartitionedCall?^text_vectorization/string_lookup/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : : : : : : 2H
"sequential/StatefulPartitionedCall"sequential/StatefulPartitionedCall2?
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?	
?
,__inference_sequential_layer_call_fn_1814621
embedding_input
unknown:	?N 
	unknown_0:  
	unknown_1: 
	unknown_2: 
	unknown_3:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallembedding_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*'
_read_only_resource_inputs	
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_sequential_layer_call_and_return_conditional_losses_18146082
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:a ]
0
_output_shapes
:??????????????????
)
_user_specified_nameembedding_input
?#
?
G__inference_sequential_layer_call_and_return_conditional_losses_1815632

inputs5
"embedding_embedding_lookup_1815608:	?N 6
$dense_matmul_readvariableop_resource:  3
%dense_biasadd_readvariableop_resource: 8
&dense_1_matmul_readvariableop_resource: 5
'dense_1_biasadd_readvariableop_resource:
identity??dense/BiasAdd/ReadVariableOp?dense/MatMul/ReadVariableOp?dense_1/BiasAdd/ReadVariableOp?dense_1/MatMul/ReadVariableOp?embedding/embedding_lookupz
embedding/CastCastinputs*

DstT0*

SrcT0*0
_output_shapes
:??????????????????2
embedding/Cast?
embedding/embedding_lookupResourceGather"embedding_embedding_lookup_1815608embedding/Cast:y:0",/job:localhost/replica:0/task:0/device:GPU:0*
Tindices0*5
_class+
)'loc:@embedding/embedding_lookup/1815608*4
_output_shapes"
 :?????????????????? *
dtype02
embedding/embedding_lookup?
#embedding/embedding_lookup/IdentityIdentity#embedding/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*5
_class+
)'loc:@embedding/embedding_lookup/1815608*4
_output_shapes"
 :?????????????????? 2%
#embedding/embedding_lookup/Identity?
%embedding/embedding_lookup/Identity_1Identity,embedding/embedding_lookup/Identity:output:0*
T0*4
_output_shapes"
 :?????????????????? 2'
%embedding/embedding_lookup/Identity_1?
dropout/IdentityIdentity.embedding/embedding_lookup/Identity_1:output:0*
T0*4
_output_shapes"
 :?????????????????? 2
dropout/Identity?
/global_average_pooling1d/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :21
/global_average_pooling1d/Mean/reduction_indices?
global_average_pooling1d/MeanMeandropout/Identity:output:08global_average_pooling1d/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:????????? 2
global_average_pooling1d/Mean?
dropout_1/IdentityIdentity&global_average_pooling1d/Mean:output:0*
T0*'
_output_shapes
:????????? 2
dropout_1/Identity?
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes

:  *
dtype02
dense/MatMul/ReadVariableOp?
dense/MatMulMatMuldropout_1/Identity:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
dense/MatMul?
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02
dense/BiasAdd/ReadVariableOp?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
dense/BiasAddj

dense/ReluReludense/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2

dense/Relu?
dropout_2/IdentityIdentitydense/Relu:activations:0*
T0*'
_output_shapes
:????????? 2
dropout_2/Identity?
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes

: *
dtype02
dense_1/MatMul/ReadVariableOp?
dense_1/MatMulMatMuldropout_2/Identity:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_1/MatMul?
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_1/BiasAdd/ReadVariableOp?
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_1/BiasAdds
IdentityIdentitydense_1/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^embedding/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp28
embedding/embedding_lookupembedding/embedding_lookup:X T
0
_output_shapes
:??????????????????
 
_user_specified_nameinputs
?
V
:__inference_global_average_pooling1d_layer_call_fn_1815896

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *^
fYRW
U__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_18145582
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :?????????????????? :\ X
4
_output_shapes"
 :?????????????????? 
 
_user_specified_nameinputs
?y
?
I__inference_sequential_1_layer_call_and_return_conditional_losses_1815302
input_1O
Ktext_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handleP
Ltext_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value	,
(text_vectorization_string_lookup_equal_y/
+text_vectorization_string_lookup_selectv2_t	%
sequential_1815289:	?N $
sequential_1815291:   
sequential_1815293: $
sequential_1815295:  
sequential_1815297:
identity??"sequential/StatefulPartitionedCall?>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2?
text_vectorization/StringLowerStringLowerinput_1*'
_output_shapes
:?????????2 
text_vectorization/StringLower?
%text_vectorization/StaticRegexReplaceStaticRegexReplace'text_vectorization/StringLower:output:0*'
_output_shapes
:?????????*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite 2'
%text_vectorization/StaticRegexReplace?
text_vectorization/SqueezeSqueeze.text_vectorization/StaticRegexReplace:output:0*
T0*#
_output_shapes
:?????????*
squeeze_dims

?????????2
text_vectorization/Squeeze?
$text_vectorization/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B 2&
$text_vectorization/StringSplit/Const?
,text_vectorization/StringSplit/StringSplitV2StringSplitV2#text_vectorization/Squeeze:output:0-text_vectorization/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:2.
,text_vectorization/StringSplit/StringSplitV2?
2text_vectorization/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        24
2text_vectorization/StringSplit/strided_slice/stack?
4text_vectorization/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       26
4text_vectorization/StringSplit/strided_slice/stack_1?
4text_vectorization/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      26
4text_vectorization/StringSplit/strided_slice/stack_2?
,text_vectorization/StringSplit/strided_sliceStridedSlice6text_vectorization/StringSplit/StringSplitV2:indices:0;text_vectorization/StringSplit/strided_slice/stack:output:0=text_vectorization/StringSplit/strided_slice/stack_1:output:0=text_vectorization/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2.
,text_vectorization/StringSplit/strided_slice?
4text_vectorization/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 26
4text_vectorization/StringSplit/strided_slice_1/stack?
6text_vectorization/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:28
6text_vectorization/StringSplit/strided_slice_1/stack_1?
6text_vectorization/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:28
6text_vectorization/StringSplit/strided_slice_1/stack_2?
.text_vectorization/StringSplit/strided_slice_1StridedSlice4text_vectorization/StringSplit/StringSplitV2:shape:0=text_vectorization/StringSplit/strided_slice_1/stack:output:0?text_vectorization/StringSplit/strided_slice_1/stack_1:output:0?text_vectorization/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask20
.text_vectorization/StringSplit/strided_slice_1?
Utext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast5text_vectorization/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:?????????2W
Utext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast7text_vectorization/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: 2Y
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapeYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:2a
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2a
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdhtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: 2`
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod?
ctext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : 2e
ctext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreatergtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ltext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: 2c
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastetext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: 2`
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2c
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: 2_
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :2a
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2ftext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: 2_
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulbtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: 2_
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: 2c
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: 2c
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 2c
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2?
btext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:?????????2d
btext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount?
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : 2^
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumitext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:?????????2Y
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum?
`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R 2b
`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0?
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2^
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2itext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:?????????2Y
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat?
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2LookupTableFindV2Ktext_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handle5text_vectorization/StringSplit/StringSplitV2:values:0Ltext_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:?????????2@
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2?
&text_vectorization/string_lookup/EqualEqual5text_vectorization/StringSplit/StringSplitV2:values:0(text_vectorization_string_lookup_equal_y*
T0*#
_output_shapes
:?????????2(
&text_vectorization/string_lookup/Equal?
)text_vectorization/string_lookup/SelectV2SelectV2*text_vectorization/string_lookup/Equal:z:0+text_vectorization_string_lookup_selectv2_tGtext_vectorization/string_lookup/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:?????????2+
)text_vectorization/string_lookup/SelectV2?
)text_vectorization/string_lookup/IdentityIdentity2text_vectorization/string_lookup/SelectV2:output:0*
T0	*#
_output_shapes
:?????????2+
)text_vectorization/string_lookup/Identity?
/text_vectorization/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R 21
/text_vectorization/RaggedToTensor/default_value?
'text_vectorization/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"?????????       2)
'text_vectorization/RaggedToTensor/Const?
6text_vectorization/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor0text_vectorization/RaggedToTensor/Const:output:02text_vectorization/string_lookup/Identity:output:08text_vectorization/RaggedToTensor/default_value:output:0`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat:output:0*
T0	*
Tindex0	*
Tshape0	*(
_output_shapes
:??????????*
num_row_partition_tensors*%
row_partition_types

ROW_SPLITS28
6text_vectorization/RaggedToTensor/RaggedTensorToTensor?
"sequential/StatefulPartitionedCallStatefulPartitionedCall?text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0sequential_1815289sequential_1815291sequential_1815293sequential_1815295sequential_1815297*
Tin

2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*'
_read_only_resource_inputs	
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_sequential_layer_call_and_return_conditional_losses_18150282$
"sequential/StatefulPartitionedCall?
activation/PartitionedCallPartitionedCall+sequential/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_activation_layer_call_and_return_conditional_losses_18149312
activation/PartitionedCall~
IdentityIdentity#activation/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp#^sequential/StatefulPartitionedCall?^text_vectorization/string_lookup/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : : : : : : 2H
"sequential/StatefulPartitionedCall"sequential/StatefulPartitionedCall2?
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_1:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: "?L
saver_filename:0StatefulPartitionedCall_2:0StatefulPartitionedCall_38"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
;
input_10
serving_default_input_1:0?????????@

activation2
StatefulPartitionedCall_1:0?????????tensorflow/serving/predict:??
?
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
	optimizer
trainable_variables
regularization_losses
	variables
	keras_api
	
signatures
+?&call_and_return_all_conditional_losses
?_default_save_signature
?__call__"
_tf_keras_sequential
W

_index_lookup_layer
	keras_api
?_adapt_function"
_tf_keras_layer
?
layer_with_weights-0
layer-0
layer-1
layer-2
layer-3
layer_with_weights-1
layer-4
layer-5
layer_with_weights-2
layer-6
	optimizer
trainable_variables
regularization_losses
	variables
	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_sequential
?
trainable_variables
regularization_losses
	variables
	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
"
	optimizer
C
0
1
2
3
 4"
trackable_list_wrapper
 "
trackable_list_wrapper
C
1
2
3
4
 5"
trackable_list_wrapper
?

!layers
"layer_regularization_losses
#metrics
$layer_metrics
%non_trainable_variables
trainable_variables
regularization_losses
	variables
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
L
&lookup_table
'token_counts
(	keras_api"
_tf_keras_layer
"
_generic_user_object
?

embeddings
)trainable_variables
*regularization_losses
+	variables
,	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?
-trainable_variables
.regularization_losses
/	variables
0	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?
1trainable_variables
2regularization_losses
3	variables
4	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?
5trainable_variables
6regularization_losses
7	variables
8	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?

kernel
bias
9trainable_variables
:regularization_losses
;	variables
<	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?
=trainable_variables
>regularization_losses
?	variables
@	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?

kernel
 bias
Atrainable_variables
Bregularization_losses
C	variables
D	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?
Eiter

Fbeta_1

Gbeta_2
	Hdecay
Ilearning_ratem?m?m?m? m?v?v?v?v? v?"
	optimizer
C
0
1
2
3
 4"
trackable_list_wrapper
 "
trackable_list_wrapper
C
0
1
2
3
 4"
trackable_list_wrapper
?

Jlayers
Klayer_regularization_losses
Lmetrics
Mlayer_metrics
Nnon_trainable_variables
trainable_variables
regularization_losses
	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?

Olayers
Player_regularization_losses
Qmetrics
Rnon_trainable_variables
Slayer_metrics
trainable_variables
regularization_losses
	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
':%	?N 2embedding/embeddings
:  2dense/kernel
: 2
dense/bias
 : 2dense_1/kernel
:2dense_1/bias
5
0
1
2"
trackable_list_wrapper
 "
trackable_list_wrapper
.
T0
U1"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
U
V_initializer
?_create_resource
?_initialize
?_destroy_resourceR 
T
?_create_resource
?_initialize
?_destroy_resourceR Z
table??
"
_generic_user_object
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
?

Wlayers
Xlayer_regularization_losses
Ymetrics
Znon_trainable_variables
[layer_metrics
)trainable_variables
*regularization_losses
+	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?

\layers
]layer_regularization_losses
^metrics
_non_trainable_variables
`layer_metrics
-trainable_variables
.regularization_losses
/	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?

alayers
blayer_regularization_losses
cmetrics
dnon_trainable_variables
elayer_metrics
1trainable_variables
2regularization_losses
3	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?

flayers
glayer_regularization_losses
hmetrics
inon_trainable_variables
jlayer_metrics
5trainable_variables
6regularization_losses
7	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?

klayers
llayer_regularization_losses
mmetrics
nnon_trainable_variables
olayer_metrics
9trainable_variables
:regularization_losses
;	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?

players
qlayer_regularization_losses
rmetrics
snon_trainable_variables
tlayer_metrics
=trainable_variables
>regularization_losses
?	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
.
0
 1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
 1"
trackable_list_wrapper
?

ulayers
vlayer_regularization_losses
wmetrics
xnon_trainable_variables
ylayer_metrics
Atrainable_variables
Bregularization_losses
C	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
Q
0
1
2
3
4
5
6"
trackable_list_wrapper
 "
trackable_list_wrapper
.
z0
{1"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
N
	|total
	}count
~	variables
	keras_api"
_tf_keras_metric
c

?total

?count
?
_fn_kwargs
?	variables
?	keras_api"
_tf_keras_metric
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
R

?total

?count
?	variables
?	keras_api"
_tf_keras_metric
c

?total

?count
?
_fn_kwargs
?	variables
?	keras_api"
_tf_keras_metric
:  (2total
:  (2count
.
|0
}1"
trackable_list_wrapper
-
~	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
,:*	?N 2Adam/embedding/embeddings/m
#:!  2Adam/dense/kernel/m
: 2Adam/dense/bias/m
%:# 2Adam/dense_1/kernel/m
:2Adam/dense_1/bias/m
,:*	?N 2Adam/embedding/embeddings/v
#:!  2Adam/dense/kernel/v
: 2Adam/dense/bias/v
%:# 2Adam/dense_1/kernel/v
:2Adam/dense_1/bias/v
?2?
I__inference_sequential_1_layer_call_and_return_conditional_losses_1815405
I__inference_sequential_1_layer_call_and_return_conditional_losses_1815504
I__inference_sequential_1_layer_call_and_return_conditional_losses_1815238
I__inference_sequential_1_layer_call_and_return_conditional_losses_1815302?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
"__inference__wrapped_model_1814501input_1"?
???
FullArgSpec
args? 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
.__inference_sequential_1_layer_call_fn_1814955
.__inference_sequential_1_layer_call_fn_1815527
.__inference_sequential_1_layer_call_fn_1815550
.__inference_sequential_1_layer_call_fn_1815174?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
__inference_adapt_step_1815598?
???
FullArgSpec
args?

jiterator
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
G__inference_sequential_layer_call_and_return_conditional_losses_1815632
G__inference_sequential_layer_call_and_return_conditional_losses_1815681
G__inference_sequential_layer_call_and_return_conditional_losses_1814810
G__inference_sequential_layer_call_and_return_conditional_losses_1814831
G__inference_sequential_layer_call_and_return_conditional_losses_1815710
G__inference_sequential_layer_call_and_return_conditional_losses_1815760?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
,__inference_sequential_layer_call_fn_1814621
,__inference_sequential_layer_call_fn_1815775
,__inference_sequential_layer_call_fn_1815790
,__inference_sequential_layer_call_fn_1814789
,__inference_sequential_layer_call_fn_1815805
,__inference_sequential_layer_call_fn_1815820?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
G__inference_activation_layer_call_and_return_conditional_losses_1815825?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
,__inference_activation_layer_call_fn_1815830?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
%__inference_signature_wrapper_1815327input_1"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
F__inference_embedding_layer_call_and_return_conditional_losses_1815840?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
+__inference_embedding_layer_call_fn_1815847?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_dropout_layer_call_and_return_conditional_losses_1815852
D__inference_dropout_layer_call_and_return_conditional_losses_1815864?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
)__inference_dropout_layer_call_fn_1815869
)__inference_dropout_layer_call_fn_1815874?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
U__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_1815880
U__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_1815886?
???
FullArgSpec%
args?
jself
jinputs
jmask
varargs
 
varkw
 
defaults?

 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
:__inference_global_average_pooling1d_layer_call_fn_1815891
:__inference_global_average_pooling1d_layer_call_fn_1815896?
???
FullArgSpec%
args?
jself
jinputs
jmask
varargs
 
varkw
 
defaults?

 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
F__inference_dropout_1_layer_call_and_return_conditional_losses_1815901
F__inference_dropout_1_layer_call_and_return_conditional_losses_1815913?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
+__inference_dropout_1_layer_call_fn_1815918
+__inference_dropout_1_layer_call_fn_1815923?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
B__inference_dense_layer_call_and_return_conditional_losses_1815934?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
'__inference_dense_layer_call_fn_1815943?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
F__inference_dropout_2_layer_call_and_return_conditional_losses_1815948
F__inference_dropout_2_layer_call_and_return_conditional_losses_1815960?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
+__inference_dropout_2_layer_call_fn_1815965
+__inference_dropout_2_layer_call_fn_1815970?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
D__inference_dense_1_layer_call_and_return_conditional_losses_1815980?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
)__inference_dense_1_layer_call_fn_1815989?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
__inference__creator_1815994?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
 __inference__initializer_1816002?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__destroyer_1816007?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__creator_1816012?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
 __inference__initializer_1816017?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__destroyer_1816022?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?B?
__inference_save_fn_1816041checkpoint_key"?
???
FullArgSpec
args?
jcheckpoint_key
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *?	
? 
?B?
__inference_restore_fn_1816049restored_tensors_0restored_tensors_1"?
???
FullArgSpec
args? 
varargsjrestored_tensors
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *?
	?
	?	
	J
Const
J	
Const_1
J	
Const_2
J	
Const_3
J	
Const_4
J	
Const_58
__inference__creator_1815994?

? 
? "? 8
__inference__creator_1816012?

? 
? "? :
__inference__destroyer_1816007?

? 
? "? :
__inference__destroyer_1816022?

? 
? "? C
 __inference__initializer_1816002&???

? 
? "? <
 __inference__initializer_1816017?

? 
? "? ?
"__inference__wrapped_model_1814501y&??? 0?-
&?#
!?
input_1?????????
? "7?4
2

activation$?!

activation??????????
G__inference_activation_layer_call_and_return_conditional_losses_1815825X/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????
? {
,__inference_activation_layer_call_fn_1815830K/?,
%?"
 ?
inputs?????????
? "??????????j
__inference_adapt_step_1815598H'?=?:
3?0
.?+?
??????????IteratorSpec
? "
 ?
D__inference_dense_1_layer_call_and_return_conditional_losses_1815980\ /?,
%?"
 ?
inputs????????? 
? "%?"
?
0?????????
? |
)__inference_dense_1_layer_call_fn_1815989O /?,
%?"
 ?
inputs????????? 
? "???????????
B__inference_dense_layer_call_and_return_conditional_losses_1815934\/?,
%?"
 ?
inputs????????? 
? "%?"
?
0????????? 
? z
'__inference_dense_layer_call_fn_1815943O/?,
%?"
 ?
inputs????????? 
? "?????????? ?
F__inference_dropout_1_layer_call_and_return_conditional_losses_1815901\3?0
)?&
 ?
inputs????????? 
p 
? "%?"
?
0????????? 
? ?
F__inference_dropout_1_layer_call_and_return_conditional_losses_1815913\3?0
)?&
 ?
inputs????????? 
p
? "%?"
?
0????????? 
? ~
+__inference_dropout_1_layer_call_fn_1815918O3?0
)?&
 ?
inputs????????? 
p 
? "?????????? ~
+__inference_dropout_1_layer_call_fn_1815923O3?0
)?&
 ?
inputs????????? 
p
? "?????????? ?
F__inference_dropout_2_layer_call_and_return_conditional_losses_1815948\3?0
)?&
 ?
inputs????????? 
p 
? "%?"
?
0????????? 
? ?
F__inference_dropout_2_layer_call_and_return_conditional_losses_1815960\3?0
)?&
 ?
inputs????????? 
p
? "%?"
?
0????????? 
? ~
+__inference_dropout_2_layer_call_fn_1815965O3?0
)?&
 ?
inputs????????? 
p 
? "?????????? ~
+__inference_dropout_2_layer_call_fn_1815970O3?0
)?&
 ?
inputs????????? 
p
? "?????????? ?
D__inference_dropout_layer_call_and_return_conditional_losses_1815852v@?=
6?3
-?*
inputs?????????????????? 
p 
? "2?/
(?%
0?????????????????? 
? ?
D__inference_dropout_layer_call_and_return_conditional_losses_1815864v@?=
6?3
-?*
inputs?????????????????? 
p
? "2?/
(?%
0?????????????????? 
? ?
)__inference_dropout_layer_call_fn_1815869i@?=
6?3
-?*
inputs?????????????????? 
p 
? "%?"?????????????????? ?
)__inference_dropout_layer_call_fn_1815874i@?=
6?3
-?*
inputs?????????????????? 
p
? "%?"?????????????????? ?
F__inference_embedding_layer_call_and_return_conditional_losses_1815840q8?5
.?+
)?&
inputs??????????????????
? "2?/
(?%
0?????????????????? 
? ?
+__inference_embedding_layer_call_fn_1815847d8?5
.?+
)?&
inputs??????????????????
? "%?"?????????????????? ?
U__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_1815880{I?F
??<
6?3
inputs'???????????????????????????

 
? ".?+
$?!
0??????????????????
? ?
U__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_1815886i@?=
6?3
-?*
inputs?????????????????? 

 
? "%?"
?
0????????? 
? ?
:__inference_global_average_pooling1d_layer_call_fn_1815891nI?F
??<
6?3
inputs'???????????????????????????

 
? "!????????????????????
:__inference_global_average_pooling1d_layer_call_fn_1815896\@?=
6?3
-?*
inputs?????????????????? 

 
? "?????????? {
__inference_restore_fn_1816049Y'K?H
A?>
?
restored_tensors_0
?
restored_tensors_1	
? "? ?
__inference_save_fn_1816041?'&?#
?
?
checkpoint_key 
? "???
`?]

name?
0/name 
#

slice_spec?
0/slice_spec 

tensor?
0/tensor
`?]

name?
1/name 
#

slice_spec?
1/slice_spec 

tensor?
1/tensor	?
I__inference_sequential_1_layer_call_and_return_conditional_losses_1815238o&??? 8?5
.?+
!?
input_1?????????
p 

 
? "%?"
?
0?????????
? ?
I__inference_sequential_1_layer_call_and_return_conditional_losses_1815302o&??? 8?5
.?+
!?
input_1?????????
p

 
? "%?"
?
0?????????
? ?
I__inference_sequential_1_layer_call_and_return_conditional_losses_1815405n&??? 7?4
-?*
 ?
inputs?????????
p 

 
? "%?"
?
0?????????
? ?
I__inference_sequential_1_layer_call_and_return_conditional_losses_1815504n&??? 7?4
-?*
 ?
inputs?????????
p

 
? "%?"
?
0?????????
? ?
.__inference_sequential_1_layer_call_fn_1814955b&??? 8?5
.?+
!?
input_1?????????
p 

 
? "???????????
.__inference_sequential_1_layer_call_fn_1815174b&??? 8?5
.?+
!?
input_1?????????
p

 
? "???????????
.__inference_sequential_1_layer_call_fn_1815527a&??? 7?4
-?*
 ?
inputs?????????
p 

 
? "???????????
.__inference_sequential_1_layer_call_fn_1815550a&??? 7?4
-?*
 ?
inputs?????????
p

 
? "???????????
G__inference_sequential_layer_call_and_return_conditional_losses_1814810y I?F
??<
2?/
embedding_input??????????????????
p 

 
? "%?"
?
0?????????
? ?
G__inference_sequential_layer_call_and_return_conditional_losses_1814831y I?F
??<
2?/
embedding_input??????????????????
p

 
? "%?"
?
0?????????
? ?
G__inference_sequential_layer_call_and_return_conditional_losses_1815632p @?=
6?3
)?&
inputs??????????????????
p 

 
? "%?"
?
0?????????
? ?
G__inference_sequential_layer_call_and_return_conditional_losses_1815681p @?=
6?3
)?&
inputs??????????????????
p

 
? "%?"
?
0?????????
? ?
G__inference_sequential_layer_call_and_return_conditional_losses_1815710h 8?5
.?+
!?
inputs??????????	
p 

 
? "%?"
?
0?????????
? ?
G__inference_sequential_layer_call_and_return_conditional_losses_1815760h 8?5
.?+
!?
inputs??????????	
p

 
? "%?"
?
0?????????
? ?
,__inference_sequential_layer_call_fn_1814621l I?F
??<
2?/
embedding_input??????????????????
p 

 
? "???????????
,__inference_sequential_layer_call_fn_1814789l I?F
??<
2?/
embedding_input??????????????????
p

 
? "???????????
,__inference_sequential_layer_call_fn_1815775c @?=
6?3
)?&
inputs??????????????????
p 

 
? "???????????
,__inference_sequential_layer_call_fn_1815790c @?=
6?3
)?&
inputs??????????????????
p

 
? "???????????
,__inference_sequential_layer_call_fn_1815805[ 8?5
.?+
!?
inputs??????????	
p 

 
? "???????????
,__inference_sequential_layer_call_fn_1815820[ 8?5
.?+
!?
inputs??????????	
p

 
? "???????????
%__inference_signature_wrapper_1815327?&??? ;?8
? 
1?.
,
input_1!?
input_1?????????"7?4
2

activation$?!

activation?????????