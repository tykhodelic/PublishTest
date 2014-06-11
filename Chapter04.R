# ��4�� �O���t�B�b�N�X�̊�b�^�O���t�B�b�N�X�ŗV��


##4.2 plot()�֐�

plot (1:10, cex = 2, cex.lab = 1.5, cex.axis = 1.3)
dev.off()


##### �}�[�W�����m�F���邽�߂̃v���b�g ## ��������
# �l�̊O���}�[�W����3 �s���̍����ɐݒ�
par(oma = rep(3, 4), bg = "gray")
plot(c(0, 1), c(0, 1), type="n", ann = FALSE, axes = FALSE)
par(xpd = TRUE) # ��}�̈�ɉ��H��������
# ��}�̈�����F�ɓh��
rect(par()$usr[1] - par()$mai[2], par()$usr[3] - par()$mai[1],
par()$usr[2] + par()$mai[4], par()$usr[4] + par()$mai[3],
col = "yellow", border = NA)
box("figure") # ��}�̈�S�̂����g�ň͂�
par(xpd = FALSE) # �`��̑Ώۂ��v���b�g�̈�ɖ߂�
# �v���b�g�̈�𔒂��h��Ԃ�
rect(par()$usr[1], par()$usr[3],
par()$usr[2], par()$usr[4],
col = "white", border = NA)
box("plot", lty = "dashed", col = "green") # �v���b�g�̈���͂�
text(.5, .5, "plot region", cex = 1.8)
# �l�̓����}�[�W���ɕ`��
mtext("figure region", side = 3, line = 2, adj = 1, cex = 1.8)
# line = 2 �͓����}�[�W����(side=3) �� 2 �s�ڂ̍����ɕ`�����Ƃ��w��
# adj �� 0 �Ȃ獶�[�C1 �Ȃ�E�[�ɕ`��D
for (i in 1:4)
mtext(paste("inner margin", i), side = i, cex = 1.4,
las = 0, line = 1, outer = FALSE)
# �l�̊O���}�[�W���ɕ`��# outer = TRUE
for (i in 1:4)
mtext(paste("outer margin", i), side = i, cex = 1.4,
las = 0, line = 1, outer = TRUE)
# �O���}�[�W���Ƀ��x����t����
mtext("device region", side=3, line=2, adj = 1, outer = TRUE,cex = 1.8)
# �Ō�Ƀv���b�g�S�̂�Ԃ��g�ň͂�
box("outer", col = "red", lwd = 3)
# axis(1) # ����܂ō쐬�����}�Əd�Ȃ邪�Cx ���̖ڐ���`��
# axis(2) # y ���̖ڐ���`��
###### �����܂Ŏ��s
dev.off()

##### �R�����F���T�C�N��
plot (1:10, col = c ("red", "blue"))
x <- rep (10, 10)
x
## [1] 10 10 10 10 10 10 10 10 10 10
x / c (2, 5) 
## [1] 5 2 5 2 5 2 5 2 5 2

x / c (2, 5, 10)
######



plot (1:10, type = "n")
text (1:10, LETTERS [1:10], col = 1:10, cex = 1:10)


##4.3 manipulate �p�b�P�[�W
manipulate (plot (1:10, col = myColors),
            myColors = pickers ("red", "green", "blue"))

manipulate(
  plot (cars, xlim = c (x.min, x.max), type = type, 
        axes = axes, ann = label),
  x.min = slider (0,15),
  x.max = slider (15,30, initial = 25),
  type = picker ("p", "l", "b", "c", "o", "h", "s", "S", "n"),
  axes = checkbox (TRUE, "Draw Axes"),
  label = checkbox (FALSE, "Draw Labels")
  )


##4.4 �������O���t�B�b�N�X�֐�

plot (cars, type = "h")
dev.off()

# plot (cars, type = "p")

## 4.5 �U�z�}
cars $ speed2 <-  speed * 1.6
cars $ dist2 <- dist * 0.3
head (cars)

cars <- transform (cars, speed2 = speed * 1.6, dist2 = dist * 0.3)

plot (dist2 ~ speed2, data = cars2,
       main = "���x�ƒ�~�����̊֌W",
       sub = "datasets::cars�̕ϐ���ϊ�",
       xlab = "���x (km/h)", ylab = "���� (m)")

identify (cars2 [, c ("speed2", "dist2")])

text (locator (1), "�g���^")
text (locator (2), c ("�g���^", "���Y"))

plot (Petal.Width ~ Petal.Length,
       pch = c (Species), col = Species,
       las = 1,  cex = 1.8,  data = iris, 
       xlab  = "�Ԃт�̒��� (cm)",
       ylab = "�Ԃт�̕� (cm)")

legend (locator (1),  legend = levels (iris$Species),
         pch = 1:3, col = 1:3,  text.col = 1:3, cex = 1.8)

###4.5.1 �g���p�b�P�[�W�ɂ��v���b�g

library (lattice)
xyplot (Sepal.Width ~ Sepal.Length,
         groups = Species, data = iris)

pdf (file = "C:/data/Iris.pdf")
xyplot (Sepal.Width ~ Sepal.Length,  groups = Species, data = iris)
dev.off()

library (ggplot2)
p <- ggplot (iris, aes(Sepal.Width, Sepal.Length))
p2 <- p + geom_point(aes(colour = Species))
print (p2)


###4.5.2 �_�O���t
?VADeath

nrow (VADeaths); ncol (VADeaths) # �s���Ɨ�
rownames (VADeaths) 
## [1] "50-54" "55-59" "60-64" "65-69" "70-74"
colnames (VADeaths)

barplot (VADeaths)

barplot (VADeaths, beside = TRUE,
         col = c ("lightblue", "mistyrose", "lightcyan",
           "lavender", "cornsilk"),
         legend = rownames(VADeaths), ylim = c(0, 100))
title (main = "�o�[�W�j�A�B�̎��S��", font.main = 4)

library (lattice)
barchart (t(VADeaths))
barchart (t (VADeaths), stack = FALSE)

library (reshape) # �t�@�C���E�p�l���� Packages �ł����s�\
x <- melt (VADeaths)
x

library (ggplot2)
p <- ggplot (x, aes (X1, value))
p + geom_bar() + facet_wrap(~X2)

###4.5.3 �q�X�g�O����
x <- hist (trees$Height)
x
y <- hist (trees$Height, break = c (60, 70, 80, 90))

nclass.Sturges

log2 (c (1,2,4,8,16,32))

nclass.Sturges(trees$Height)

###4.5.4 ���q�Q�}

x <- boxplot (trees$Height)
x
76 + (8 * 1.58 / sqrt (31))
## [1] 78.27021
76 - (8 * 1.58 / sqrt (31))

y <- boxplot (count ~ spray, data = InsectSprays,
              col = "lightgray")
y

bwplot (count ~ spray, data = InsectSprays)

p <- ggplot(InsectSprays, aes (spray, count))
p + geom_boxplot()

##4.6 �v���b�g�L����J���[�̎w��

library(grid)
grid.rect (gp = gpar(col = "grey"))
> for (i in 1:nrow) {
   for (j in 1:ncol) {
     x <- unit(j/(ncol+1), "npc")
     y <- unit(i/(nrow + 1), "npc")
     pch <- (i - 1) * ncol + j - 1
     if (pch > 25) 
       pch <- c ("A", "b", ".", "#")[pch - 25]
     grid.points(x + unit(3, "mm"), y, 
       pch = pch, gp = gpar(fill = "yellow", cex = 2))
     grid.text(pch, x - unit(4, "mm"), y,
               gp = gpar(col = "grey", cex = 1.4))
   }
 }

plot (1:10, col = 1:10, cex = 12.0, pch = 19)

length (colors())
## [1] 657
colors()[1:10]


###4.6.1 ����

plot (1:10, cex = 12.0)
lines (c (1,5), c(1,5), lwd = 5.0, col = "blue")
lines (c (6,10), c(6,8), lwd = 5.0, lty = 3)

## �v���b�g�̕ۑ�

library (ggplot2)
p <- ggplot(iris, aes(Sepal.Width, Sepal.Length))
p2 <- p + geom_point(aes(colour = Species))
print (p2)

par (family = "Japan1")  # Windows 
# par (family = "Osaka") # Mac OS X