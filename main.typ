#import "template.typ": *
#import "@preview/tablex:0.0.8": *
#let th=[#math.theta]
#let ll=[#sym.angle.l]
#let rr=[#sym.angle.r]
#let times="×"
#show: project.with(
  title: "광양자 가설 실험",
  authors: (
    (name: "문승현", email: "shmoon232@snu.ac.kr", affiliation: "서울대학교 물리천문학부 물리학전공 \n 서울특별시 관악구 관악로 1"),
  ),
  abstract: [양자역학의 태동에 중요한 역할을 한 광양자 가설은 1916년 밀리컨에 의해 실험적으로 증명된다. 그렇지만 해당 실험에서는 당대에 해결할 수 없던 문제들이 있었다. 본 연구에서는 "플랑크 상수 측정 장치"를 이용한 체계적인 실험을 통해 해당 문제들을 해결한 상태로 밀리컨의 광전 효과 실험을 재현한다. 이렇게 측정한 빛의 진동수와 정지 전압의 상관계수는 0.9987이었지만 플랑크 상수는 $4.85 times 10^(-34) "J"dot"s"$로 27%의 오차를 가지고 있었다.\
  #text(weight: "bold")[Keywords: ]
  광양자 가설, 광전 효과, 아인슈타인, 밀리컨],
  date: "April 21, 2024",
)

= 서론

양자역학은 현대의 다양한 과학 및 기술 분야에서 핵심적인 역할을 담당한다. 예를 들어, 현대 전자기기에 중요한 역할을 하는 레이저나 반도체는 양자역학에 기초를 두고 있다. 양자역학은 미래의 기술 진보뿐만 아니라, 현대 과학의 여러 이론적 토대를 이해하는 데 있어 필수불가결한 학문으로 자리매김하고 있다.

이러한 양자역학의 태동에 있어 광양자 가설는 중요한 역할을 담당한다. 광양자 가설은 Albert Einstein이 1905년에 제안한 이론으로, 
#set text(font:"Times New Roman")
_On a Heuristic Point of View Concerning the Production and Transformation of Light_
#set text(font:"NanumMyeongjo")
에서 제안되었다 @einstein1905heuristic. 광양자 가설은 빛이 입자라는 것을 가정하고, 이 입자를 광양자라고 명명하여 광전효과를 설명하였다. 이 이론을 통해서 고전적인 전자기학에서 벗어나 양자역학이 시작될 수 있었다.

광양자 가설의 실험적 증명은 많은 이들에 의해서 다양한 방법으로 진행되어 왔다.
그중 가장 대표적인 실험은 Robert A. Millikan이 진행한 광전효과 실험이다. 
이 실험을 뒷받침하기 위해 Millikan은 1916년에
#set text(font:"Times New Roman")
_Einstein’s Photoelectric Equation and Contact Electromotive Force._
#set text(font:"NanumMyeongjo")
를 미리 발표하였다 @millikan1916einstein. 이 논문은 실험 결과를 기반으로 한 이론적인 계산과 데이터 분석을 통해 아인슈타인의 광양자 가설을 통해 설명한 광전효과에서의 빛의 주파수와 광전압의 관계를 @millikan_graph 와 같이 나타내었다.
#figure(
  image("millikan_graph.png"),
  caption:[Millikan의 논문에서 나타난 빛의 주파수와 광전압의 관계 그래프 @millikan1916einstein],
) <millikan_graph>
결국 같은 해 Physicsal Review에 
#set text(font:"Times New Roman")
_A Direct Photoelectric Determination of Planck's "$h$"_ 
#set text(font:"NanumMyeongjo")
를 발표하면서 플랑크 상수와 광전효과의 관계를 실험적으로 정확하게 측정하여 플랑크 상수에 물리학적 의미를 부여하는 동시에 광양자 가설을 실험적으로 증명하였다 @millikan1916direct. 

Millikan은 상술한 논문들에서 실험을 통해 광양자 가설을 증명하였지만, 이 실험 과정에서 개선할 수 있는 점들이 많이 발견되었다. 우선, 밀리컨의 광전효과 실험에서는 단색광을 얻기 위해 필터를 사용하였다 @millikan1916direct. 그러나 이러한 필터를 통한 빛은 단일 파장만을 가진 빛이라고 보기 어렵다. 이는 해당 빛이 편광되지 않았다는 점에서부터 알 수 있다. 따라서 이를 개선하기 위해 단일 파장을 얻는 것이 보장되는 LED나 LASER를 사용하여야 한다. 또한, 밀리컨의 논문에서도 언급되었듯이, 광전압을 측정하는 과정에서 진공 상태를 유지하는 것이 필요하지만 진행하지 못했다 @millikan1916direct. 이에 본 연구는 밀리컨의 실험을 개선하여 광양자 실험을 비교적 간단하지만 정확하게 진행한다.

본 연구에서는 밀리컨의 실험을 그대로 진행하되, LED를 광원으로 이용하여 단일 파장이 보장되는 광원을 얻는다. 또한, 광전압을 측정하는 과정에서의 오차가 생기지 않도록 광전압을 측정하는 bulb 내부를 진공으로 유지한다. 이를 위해 사용한 장비와 기술들을 밀리컨의 시대에는 존재하지 않았던 기술들로, 이러한 과정을 통해 광양자 가설을 더욱 정교하게 증명할 수 있다.

= 실험 방법
이 실험에서는 광전 효과 실험을 진행하기 위해 (주)서울과학기기에서 제작한 "플랑크 상수 측정 장치"를 이용하였다.
#figure(
  image("pca.png"),
  caption: [플랑크상수 측정장치를 위에서 바라본 모습]
) <pca_top>
위 @pca_top 는 플랑크 상수 측정 장치를 위에서 바라본 모습으로, 광전류와 걸린 전압을 나타내 준다.
#figure(
  image("pca front.png"),
  caption: [플랑크상수 측정장치를 앞에서 바라본 모습]
) <pca_front>
위 @pca_front 는 플랑크 상수 측정 장치를 앞에서 바라본 모습으로, 광전 효과 실험에 사용할 빛의 종류를 조정하며 걸린 전압을 조정할 수 있다.

실험은 본 과정을 따라 진행한다. 우선 아무 광원도 선택하지 않은 상태로 편광각과 영점을 맞춘다. 그 후, 측정하고자 하는 빛의 파장을 설정하고 빛이 제대로 들어오는지 확인한다. 전류계에 광전류가 측정되는지 확인한 뒤, 광전류의 반대 방향으로 전압을 걸어주며 광전류를 측정한다. 이 과정을 통해서 광전류가 0이 되는 시점의 전압을 측정하고, 이를 정지전압으로 기록한다. 본 과정을 다양한 파장에 대하여 반복하며 실험을 진행한다.

= 결과
본 실험을 총 6개의 파장에 대해서 진행한 결과는 아래 @table 과 같다.
#figure(table(
  stroke: none,
  columns:3,
  table.hline(),
  [파장 \ $("nm")$], [저지전압 \ $("mV")$], [진동수 \ $("THz")$],
  table.hline(),
  [$850$], [$0$], [$353$],
  [$640$], [$350$], [$469$],
  [$585$], [$460$], [$513$],
  [$520$], [$670$], [$577$],
  [$465$], [$860$], [$645$],
  [$420$], [$1120$], [$714$],
  table.hline(),
),
caption: [광전류 실험 결과],
) <table>

아인슈타인의 광양자 가설에 따르면 광전압과 빛의 주파수는 선형적인 관계를 가진다 @einstein1905heuristic. 따라서 실험 결과를 기반으로 그래프를 그리면 아인슈타인의 광양자 가설을 실험적으로 증명할 수 있다. 실험 결과를 그래프로 나타내면 아래 @result 와 같다.
#figure(
  image("result.png"),
  caption: [광전압과 빛의 주파수의 관계 그래프],
) <result>
위 @result 와 같이 광전압과 빛의 주파수는 선형적인 관계를 가지고 있음을 확인할 수 있다.

= 논의
위 @result 에서의 그래프를 조금 더 상세하게 분석해 보면, 광전압과 빛의 주파수는 상관계수의 값이 0.9987을 가져 1에 매우 근접하므로 선형 비례 관계가 성립한다고 말할 수 있다. 아인슈타인의 광양자 가설을 뒷받침하기 위해서는 여기서 얻은 그래프의 기울기가 플랑크 상수와 유사해야 한다. 본 실험에서 얻은 기울기는 정지 전압과 빛의 진동수 사이의 기울기로 $3.03 times 10^(-15) "V/Hz" $이다. 아인슈타인의 광양자 가설에서는 전자의 최대 운동에너지를 기준으로 삼았으므로, $1.60 times 10^(-19)$을 곱해 주어야 한다.
따라서 본 실험을 통해 측정한 플랑크 상수는 $4.85 times 10^(-34) "J"dot"s"$로 측정되었다. 이는 참값인 $6.63 times 10^(-34) "J/s"$와 비교했을 때 약 27%의 오차를 가지고 있다. 이는 실험 과정에서 밀리컨과 같이 충분히 많이 반복하지 못했으며, 정지 전압을 구하는 과정에서 정지 전압보다 더 높은 전압을 걸어주어 정지 전압을 정확하게 측정하지 못했기 때문이다. 이러한 오차를 줄이기 위해서는 실험을 충분히 많이 반복하고, 정지 전압을 정확하게 측정하는 것이 중요할 것이다.

= 결론
본 연구는 광양자 가설을 밀리컨의 시대에 존재하지 않았던 기술을 통해서 보다 정교한 광양자 가설을 검증하는 광전 효과 실험을 수행한다는 데에 의의를 가진다. 본 실험에서는 다양한 빛의 진동수에 따른 정지 전압을 측정하는 방법을 채택하였고, 아인슈타인의 광양자 가설에 의한 두 측정치의 선형성을 확인할 수 있었다. 다만, 실험 결과를 통해 얻은 플랑크 상수는 $4.85 times 10^(-34) "J"dot"s"$로 측정되었으며, 이는 참값과 약 27%의 오차를 가지고 있다. 이러한 오차는 실험을 간소화하여 진행했기 때문일 것으로 예상되어 충분한 반복을 통해 오차를 줄인 더욱 정교한 실험이 필요할 것으로 보인다.

#bibliography("reference.bib", full:true, style: "american-physics-society")