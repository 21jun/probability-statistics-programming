# [문제1] 다음의 데이터를 사용하여 각 문항의 R 코드를 작성하여라.
# -3, 0, 5, -2, 4, 1, 6

# (1) 데이터 벡터 x를 만드시오.
x = c(-3, 0, 5, -2, 4, 1, 6)
x

# (2) 각 데이터의 제곱으로 구성된 벡터를 만드시오.
x^2

# (3) 각 데이터의 제곱의 합을 구하시오.
sum(x^2)

# (4) 각 데이터에서 2를 뺀 값을 구하시오.
x-2

# (5) 최댓값과 최솟값을 구하시오.
max(x); min(x)

# (6) 4보다 큰 값들로만 구성된 데이터 벡터를 만드시오.
c(x[x>4])

# (7) 벡터 x의 길이를 구하시오.
length(x)

# (8) 데이터를 내림차순으로 정렬하시오.
sort(x, decreasing=T)

# (8) x의 전치행렬과 행렬 x의 곱을 구하시오.
t(matrix(x)) %*% matrix(x)

# (9) 행렬 x와 x의 전치행렬의 곱을 구하시오.
matrix(x) %*% t(matrix(x))

# (10) 벡터 x와 x*x를 열결합(column bind)하여 y에 저장하시오.
y <- cbind(x, x*x)

# (11) 벡터 x와 x*x를 행결합(row bind)하여 z에 저장하시오.
z <- rbind(x, x*x)

# [문제2] 다음과 같은 20개의 data가 있다.
# 1, 5, 0, 2, 5,  3, 4, 5, 2, 4,  
# 3, 0, 6, 7, 3,  6, 7, 7, 3, 5

# (1) 행부터 입력하는 4×5 행렬(matrix) m를 만드시오.
m <- matrix(c(1, 5, 0, 2, 5, 
              3, 4, 5, 2, 4,  
              3, 0, 6, 7, 3,
              6, 7, 7, 3, 5),
            byrow=TRUE,
            nrow=4, ncol=5)
m

# (2) m의 전치행렬을 만드시오.
t(m)

# (3) 행렬 m의 첫 번째 행(row)만 뽑아낸 행렬 r1을 만드시오.
r1 = m[1, ]

# (4) 행렬 m의 세 번째 열(col)만 뽑아낸 행렬 c3를 만드시오.
c3 = m[, 3]

# (5) 행렬 m의 2 번째 열(col)과 4번째 열만 뽑아낸 행렬 c4를 만드시오.
c4 = m[,c(2,4)]

# (6) 행렬 m에서 5, 2, 6, 7을 원소로 가지는 2×2 부분행렬을 구하시오.
m[2:3, 3:4]

# (7) 행렬 m에서 apply 함수와 mean 함수를 사용해서, 각 행(row)의 평균을 구하시오.
apply(m, 1, mean)

# (8) 행렬 m에서 apply 함수와 mean 함수를 사용해서, 각 열(col)의 평균을 구하시오.
apply(m, 2, mean)

# [문제3] OECD 경제협력개발기구는 올해 세계경제의 GDP성장률 전망을 2.9%로 유지한다. 그리고 내년도 전망은 기존 3.0%에서 0.1% 내린 2.9%, 2021년은 3.0%이다. 전기(前記)한 세계경제의 성장률 전망치는 세계 금융위기 이후 10년 만의 최저치로서 美中무역분쟁 등을 주요 요인으로 분석하였다. 

# (1) 위의 표를 행렬로 나타내는 R-코드를 작성하여라.
OECD = matrix(c(2.9, 2.3, 1.2, 1.0, 2.0, 6.2,
                2.9, 2.0, 1.1, 0.6, 2.3, 5.7),
                byrow=T, nrow=2, ncol=6)

OECD

# (2) 표와 동일하게 행렬의 행의 명칭(이름)과 열의 명칭을 부여하는 R-코드를 작성하여라.
rownames(OECD) <- c("2019년", "2020년")
colnames(OECD) <- c("세계", "미국", "유로존", "일본", "한국", "중국")
OECD

# (3) 한국의 데이터를 행렬로 나타내는 R-코드를 작성하여라.
OECD[, "한국",drop=F] # OECD[, 5]

# (4) 각각 행벡터의 결합과 열벡터의 결합으로 행렬을 나타내는 R-코드를 작성하여라.
rbind(c(2.9, 2.3, 1.2, 1.0, 2.0, 6.2), c(2.9, 2.0, 1.1, 0.6, 2.3, 5.7))
cbind(c(2.9, 2.9), c(2.3, 2.0), c(1.2, 1.1), c(1.0, 0.6), c(2.0, 2.3), c(6.2, 5.7))

# (5) 2019년과 2020년의 세계 경제성장율의 평균을 계산하는 R-코드를 작성하여라.
apply(OECD, 1, mean)


