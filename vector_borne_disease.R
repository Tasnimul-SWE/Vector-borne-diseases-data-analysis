CD = read.csv('chikungunya.csv')
DD = read.csv('dengue.csv')
MD = read.csv('malaria.csv')

cc = data.frame(CD[c("Symbol")])
dd = data.frame(DD[c("Symbol")])
mm = data.frame(MD[c("Symbol")])
#Find Out the Duplicated Row & Deleted That Duplicated Row for chikungunya

duplicated(cc)
which(duplicated(cc))
cc=cc[!duplicated(cc),]
cc

#Find Out the Duplicated Row & Deleted That Duplicated Row for dengue

duplicated(dd)
which(duplicated(dd))
dd=dd[!duplicated(dd),]
dd

#Find Out the Duplicated Row & Deleted That Duplicated Row for malaria

duplicated(mm)
which(duplicated(mm))
mm= mm[!duplicated(mm),]
mm


# cc & dd intersect 
C = intersect(cc,dd)
matrix(C,ncol = 1,byrow = TRUE)
CC = data.frame(matrix(C,ncol = 1,byrow = TRUE))
colnames(CC) = c("Symbol")
write.csv(CC,"CD_and_DD.csv",row.names = FALSE)
CC
#cc & mm intersect
M = intersect(mm,cc)
matrix(M,ncol = 1,byrow = TRUE)
MM = data.frame(matrix(M,ncol = 1,byrow = TRUE))
colnames(MM) = c("Symbol")
write.csv(MM,"MD_and_CD.csv",row.names = FALSE)


#dd & mm intersect 
D = intersect(dd,mm)
matrix(D,ncol = 1,byrow = TRUE)
DD = data.frame(matrix(D,ncol = 1,byrow = TRUE))
colnames(DD) = c("Symbol")
write.csv(DD,"DD_and_MD.csv",row.names = FALSE)



# cc & dd & mm intersect
L = intersect(C,mm)
matrix(L,ncol = 1,byrow = TRUE)
LL = data.frame(matrix(L,ncol = 1,byrow = TRUE))
colnames(LL) = c("Symbol")
write.csv(LL,"All.csv",row.names = FALSE)
LL
