plant_height<-175
pod_length<-8
genotype<-"A1"
genotype
money<-50L
treatment_name<-"control"
is_resistant<-TRUE
has_disease<-FALSE
treatment<-factor(c("genotype","replication"))
class(plant_height)
class(genotype)
seed_weight<-50
class(treatment)
grain_yield<-3.5#yield in tons/hectare
flower_colour<-"purple"
disease_resistant<-3
treatment_group<-factor(c("control","treatment A","control",'treatment B̥'))
fertilizer_level<-c(100,150,200,250) #kg/ha
class(treatment_group)
yield_genotype_A<-25
yield_genotype_B<-30
average_yield<-(yield_genotype_A+yield_genotype_B)/2
print(average_yield)
yield_treatment<-20
yield_control<-28
percentage_increase<-((yield_treatment-yield_control)/yield_control)*100
length<-50
width<-30
area<-length*width
print(area)
yield<-28
average_yield<-25
high_yielding_variety
#check if a genotype is both high yielding and disease resistance
yield<-28
disease_resistant<-TRUE
desirable_genotype<-(yield>25)& disease_resistant
print(desirable_genotype)





























