var v=0;
var ctx = document.getElementById("myRaderChart");
var myRadarChart = new Chart(ctx, {
  //レーダーチャートを表示
  type: "radar",
  data: {
      labels: ["腕立て(回)", "クランチ(回)", "レッグレイズ(回)", "スクワット(回)", "プランク(秒)"],
      datasets: [{
        label: gon.username,
          //回数を動的に設定
          data: [gon.count1, gon.count2, gon.count3, gon.count4, gon.count5],
          backgroundColor: "RGBA(255,200,0, 0.7)",
          borderColor: "RGBA(255,200,0, 1)",
          borderWidth: 1,
          pointBackgroundColor: "rgba(0,0,0,1)"
      }]
  },
  options: {
      title: {
          //trueの場合、軸タイトルを表示
          display: true,
          text: "ステータス"
      },
      scale:{
          //目盛線の設定
          ticks:{
              //データの最小値を計算する場合に使用する調整値。
              suggestedMin: 0,
              //データの最大値を計算する場合に使用する調整値
              suggestedMax: 36000,
              //間隔
              stepSize: 3000,
              //コールバックに渡される3番目の引数はラベルの配列
              callback: function(value, index, values){
                  return  value
              }
          }
      }
  }
});
