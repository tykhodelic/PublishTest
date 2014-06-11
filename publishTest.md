RMeCab�p�b�P�[�W�Ƃ�
========================================================
RMeCab�͓��{��`�ԑf��͂ł��� MeCab ��R��ڑ�����C���^�[�t�F�C�X�ł��DRMeCab�͈ȉ�����_�E�����[�h���邱�Ƃ��ł��܂��D

http://rmecab.jp/wiki/index.php?RMeCab

RMeCab������
-------------------------


```r
# RMeCab �𗘗p���鏀��
library (RMeCab)
```

### ������P�ʂƂ���Ngram(bigram)�𐶐�

```r
# ���O�Ɵ��΂��ꂼ��4��i���܂ރt�H���_���w��
res <- docNgram ("../data/writers", type = 0) # writers �̓t�H���_��
```

```
## file = ../data/writers/ogai_gan.txt Ngram = 2 
## length = 6069 
## 
## file = ../data/writers/ogai_kanoyoni.txt Ngram = 2 
## length = 5932 
## 
## file = ../data/writers/ogai_niwatori.txt Ngram = 2 
## length = 5888 
## 
## file = ../data/writers/ogai_vita.txt Ngram = 2 
## length = 5760 
## 
## file = ../data/writers/soseki_eijitsu.txt Ngram = 2 
## length = 6097 
## 
## file = ../data/writers/soseki_garasu.txt Ngram = 2 
## length = 5923 
## 
## file = ../data/writers/soseki_omoidasu.txt Ngram = 2 
## length = 6780 
## 
## file = ../data/writers/soseki_yume.txt Ngram = 2 
## length = 5714
```

```r
res2 <- res[ rownames(res) %in% c("[��-�A]", "[��-�A]", 
                                  "[��-�A]", "[��-�A]", 
                                  "[��-�A]",  "[��-�A]",  
                                  "[��-�A]",  "[��-�A]" ) ,  ]
res2
```

```
##          Text
## Ngram     ogai_gan.txt ogai_kanoyoni.txt ogai_niwatori.txt ogai_vita.txt
##   [��-�A]           66                66                48            63
##   [��-�A]          167               194               135           112
##   [��-�A]           67                52                76            53
##   [��-�A]           47                34                29            36
##   [��-�A]           55                81                36            47
##   [��-�A]           73                67                35            69
##   [��-�A]           10                25                14            21
##   [��-�A]           44                34                37            35
##          Text
## Ngram     soseki_eijitsu.txt soseki_garasu.txt soseki_omoidasu.txt
##   [��-�A]                 31                28                  38
##   [��-�A]                143                70                 102
##   [��-�A]                 37                36                  46
##   [��-�A]                 86                24                  29
##   [��-�A]                 41                41                  32
##   [��-�A]                 40                39                  42
##   [��-�A]                 22                10                  18
##   [��-�A]                 51                33                  28
##          Text
## Ngram     soseki_yume.txt
##   [��-�A]              33
##   [��-�A]             138
##   [��-�A]              38
##   [��-�A]              41
##   [��-�A]              39
##   [��-�A]              22
##   [��-�A]              13
##   [��-�A]              44
```

```r
res2.pc <- princomp (t (res2))
```

### �听�����͂ɂ��o�C�v���b�g


```r
biplot (res2.pc)
```

![plot of chunk plot](figure/plot.png) 
���̃v���W�F�N�g�͈ȉ��Ɍ��J���Ă��܂�
https://github.com/ishida-m/PublishTest.git

