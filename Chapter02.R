# 2.1 R����ƃf�[�^�\��


###2.1.1 �l�����Z
1 + 1
2 - 2
3 * 3
4 / 4


(1 + 2) * 3  / 4    ;    1 * 2 / (3 - 2 + 1)

1:10
1:10 + 1

# �r���ŉ��s���邪�C���͑���
1 + 2 + 3 +
  4 + 5 + 6

###2.1.2 �ϐ����邢�̓I�u�W�F�N�g
x <- c (1.0, 1.2, 1.3)
x
x * 10
y <- �Γc��L
y <- "�Γc��L"
y

# �I�u�W�F�N�g���ɂ͓��{����g����i�����͂��Ȃ��j
 (�Γc <- "��L" ) # �ۊ��ʂ��g���đ���Ɠ����ɒ��g��\��
_underBar <- 5
 $4 <- 5
 if <- 1

LETTERS
letters

##### �R�����F�����R�[�h�ƃo�C�g
 charToRaw("��")
 0x82
 0xa0
#####

# 2.2 �Y��
LETTERS [1:5]
LETTERS [ c (1, 3, 5, 20:26)]

z <- 1:30
z [1:5]
z [c (1, 3, 5, 25:30) ]

##### �R�����F�]�v�Ȕ��p�X�y�[�X
 x <- 1
 x < - 3
#####

# �A���t�@�x�b�g�啶���̍Ō�̂R�����𒊏o
LETTERS [ - (1:23)] #���̏ꍇ�ۊ��ʂ��K�v

# ���̖��O���x�N�g���ɂ���
dogs <- c ("����", "�`���R", "�}����", "�i�i")
# ���̌���𖼑O�Ƃ��ď��o�^����
names (dogs) <- c ("�`����", "�R�[�M", "�Č�", "�R�[�M" ) ; dogs
dogs ["�R�[�M"]


## 2.3 �֐��ɂ���

x <- 1:100       # 1, 2, 3, ..., 98, 99, 100 �̃x�N�g��
sum (x)          # ���v

mean (x)         # ����

y <- 1:3         # 1,2,3 �̃x�N�g��
rep (y, 3)       # 3 ��J��Ԃ�

z <- c ("A", "B", "C")   # �A���t�@�x�b�g�O�̃x�N�g��
rep (z, 5)               # 5 ��J��Ԃ�

seq (10)                        # 1 ���� 10 �܂ł̐����̗�

seq (from = 0, to = 10, by = 2) # �Ԋu�� 2 �Ƃ����x�N�g��

seq (0, 10, 3)                  # �Ԋu�� 3 �Ƃ����x�N�g��

seq (0, 1, 0.1)                 # �Ԋu�� 0.1 �Ƃ����x�N�g��


## 2.4 �w���v�̎Q��
help.search ("sequence")

##### �R�����FR�ł̃w���v�\��
 ?seq   # ���̍s�����s����
#####


## 2.5 �֐��̉��p
x <- 1:6
sample (x, 1)

sample (x, 10)
# �ȉ��ɃG���[ sample(x, 10) : 
#   'replace = FALSE' �Ȃ̂ŁA��W�c�ȏ�̑傫���̕W�{�͎�邱�Ƃ��ł��܂��� 
sample (x, 10, rep = TRUE)

kuji <- c ("��g", "���g", "���g") # �D��p��
kuji
# [1] "��g" "���g" "���g"
sample (kuji, 1)                   # ���݂���������
# [1] "���g" 
# ���݂����̏o���m���𒲐�
sample (kuji, 1, prob = c (1/10, 2/10, 7/10) )

x <- sample (kuji, 10000, rep = T,  prob = c(1/10, 2/10, 7/10) )
(z <- table (x) )
# x
# ���g ��g ���g 
# 7002  963 2035 
barplot (z)


## 2.6 �f�[�^�^�ƃf�[�^�\��
###2.6.1 �f�[�^�^
# ����
(x <- 1)
# [1] 1
typeof (x)
# [1] "double"
# ����
(y <- 1L)
# [1] 1
typeof (y)
# [1] "integer"

(x <- 1 + 2i)


x <- '������'
y <- "DEF"

LETTERS
letters

paste (LETTERS, collapse = "")
# [1] "ABCDEFGHIJKLMNOPQRSTUVWXYZ"

strsplit (x, "")
## [[1]]
## [1] "��" "��" "��"

x <- c ("�j", "��")
x
## [1] "�j" "��"
class (x)
## [1] "character"
xf <- as.factor (x)
xf
## [1] �j ��
## Levels: �� �j
class (xf)
## [1] "factor"


str (xf)
## Factor w/ 2 levels "��","�j": 2 1

x <- 5
x >= 3
## [1] TRUE

x <- 1:5
x <= 3; x < 3; x > 3; x == 3; x != 3
## [1]  TRUE  TRUE  TRUE FALSE FALSE
## [1]  TRUE  TRUE FALSE FALSE FALSE
## [1] FALSE FALSE FALSE  TRUE  TRUE
## [1] FALSE FALSE  TRUE FALSE FALSE
## [1]  TRUE  TRUE FALSE  TRUE  TRUE

sum (x >= 3)
## [1] 3


y <- c ("A", "B", "C")
y == "B"
## [1] FALSE  TRUE FALSE


z <- c ("A", "B", "O", "AB", "A", "B", "O", "AB")
z == c ("AB", "B")
## [1] FALSE  TRUE FALSE FALSE FALSE  TRUE FALSE FALSE


z == c ("AB", "B", "AB", "B", "AB", "B", "AB", "B")
## [1] FALSE  TRUE FALSE FALSE FALSE  TRUE FALSE FALSE


z %in% c ("AB", "B")
# [1] FALSE  TRUE FALSE  TRUE FALSE  TRUE FALSE  TRUE
sum ( z %in% c ("AB", "B") )
## [1] 4
which ( z %in% c ("AB", "B") )
## [1] 2 4 6 8


dogs [names (dogs) %in%  "�R�[�M"]
##   �R�[�M   �R�[�M 
## "�`���R"   "�i�i"

###2.6.2 �f�[�^�\��

head (sleep)
##   extra group ID
## 1   0.7     1  1
## 2  -1.6     1  2
## 3  -0.2     1  3
## 4  -1.2     1  4
## 5  -0.1     1  5
## 6   3.4     1  6


summary (sleep)
 ##     extra        group        ID   
 ## Min.   :-1.600   1:10   1      :2  
 ## 1st Qu.:-0.025   2:10   2      :2  
 ## Median : 0.950          3      :2  
 ## Mean   : 1.540          4      :2  
 ## 3rd Qu.: 3.400          5      :2  
 ## Max.   : 5.500          6      :2  
 ##                         (Other):8


x <- data.frame (Num = 1:5, Cha = LETTERS[1:5])
x
##   Num Cha
## 1   1   A
## 2   2   B
## 3   3   C
## 4   4   D
## 5   5   E 
x $ Num
## [1] 1 2 3 4 5
x $ Cha
## [1] A B C D E
## Levels: A B C D E


x $ New <- c ("��", "��", "��", "��", "��")
nrow (x)
## [1] 5
ncol (x)
## [1] 3
x
##   Num Cha New
## 1   1   A  ��
## 2   2   B  ��
## 3   3   C  ��
## 4   4   D  ��
## 5   5   E  ��
str (x)       # �\�����m�F
## 'data.frame':	5 obs. of  3 variables:
##  $ Num: int  1 2 3 4 5
##  $ Cha: Factor w/ 5 levels "A","B","C","D",..: 1 2 3 4 5
##  $ New: chr  "��" "��" "��" "��" ...

x [1:3, c (1,3)]
##   Num New
## 1   1  ��
## 2   2  ��
## 3   3  ��


x [1:3, -2]      # 2 ��ڂ��̂���
##   Num New
## 1   1  ��
## 2   2  ��
## 3   3  ��


# ��D��
(x <- matrix (1:9, ncol = 3))
##      [,1] [,2] [,3]
## [1,]    1    4    7
## [2,]    2    5    8
## [3,]    3    6    9


# �s�D��
(y <- matrix (1:9, ncol = 3, byrow = TRUE))
##      [,1] [,2] [,3]
## [1,]    1    2    3
## [2,]    4    5    6
## [3,]    7    8    9

# �v�f�����w��s�E�񐔂̔{���ł͂Ȃ�
(z <- matrix (c (2,5,7), nrow = 2))
##      [,1] [,2]
## [1,]    2    7
## [2,]    5    2
##  �x�����b�Z�[�W�F 
## In matrix(c(2, 5, 7), nrow = 2) :
##    �f�[�^�� [3] ���s��  [2] �𐮐��Ŋ������A�������͊|�����l�ł͂���܂���  


(x <- matrix (1:9, ncol = 3))
##      [,1] [,2] [,3]
## [1,]    1    4    7
## [2,]    2    5    8
## [3,]    3    6    9

t(x)  # �]�u
##      [,1] [,2] [,3]
## [1,]    1    2    3
## [2,]    4    5    6
## [3,]    7    8    9


HairEyeColor
## , , Sex = Male

##        Eye
## Hair    Brown Blue Hazel Green
##   Black    32   11    10     3
##   Brown    53   50    25    15
##   Red      10   10     7     7
##   Blond     3   30     5     8

## , , Sex = Female

##        Eye
## Hair    Brown Blue Hazel Green
##   Black    36    9     5     2
##   Brown    66   34    29    14
##   Red      16    7     7     7
##   Blond     4   64     5     8



HairEyeColor [ , , Sex = "Female"]
##        Eye
## Hair    Brown Blue Hazel Green
##   Black    36    9     5     2
##   Brown    66   34    29    14
##   Red      16    7     7     7
##   Blond     4   64     5     8



HairEyeColor ["Black" , , ]
##        Sex
## Eye     Male Female
##   Brown   32     36
##   Blue    11      9
##   Hazel   10      5
##   Green    3      2


x <- lm (dist ~ speed, data = cars)
str (x)
## List of 12
##  $ coefficients : Named num [1:2] -17.58 3.93
##   ..- attr(*, "names")= chr [1:2] "(Intercept)" "speed"
##  $ residuals    : Named num [1:50] 3.85 11.85 -5.95 12.05 2.12 ...
##   ..- attr(*, "names")= chr [1:50] "1" "2" "3" "4" ...
## �D�D�D����
##  - attr(*, "class")= chr "lm"
## > x [[1]]
## (Intercept)       speed 
##  -17.579095    3.932409 

x [[1]]
x $ coefficients
## (Intercept)       speed 
##  -17.579095    3.932409 
x [[1]][1]
## (Intercept) 
##   -17.57909 
coef (x)

str (x [[1]])
 ## Named num [1:2] -17.58 3.93
 ## - attr(*, "names")= chr [1:2] "(Intercept)" "speed"

x [[1]][1]
## (Intercept) 
##   -17.57909 

x $ coefficients [1]
## (Intercept) 
##   -17.57909 


is.list (x)
## [1] TRUE


is.vector (LETTERS)
## [1] TRUE
is.data.frame (iris) # iris�͂���߂̃f�[�^
## [1] TRUE