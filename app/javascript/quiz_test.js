const quiz = [
  {
    question:'ぞうとさんまはどちらが大きいですか？',
    answers:[
      'ぞう',
      'さんま'
    ],
    correct: 'ぞう'
  },{
    question:'朝の正しい挨拶はどちらですか？',
    answers:[
      'おはようございます',
      'ごちそうさまでした'
    ],
    correct: 'おはようございます'
  },{
    question:'野菜はどちらですか？',
    answers:[
      'トマト',
      'いちご'
    ],
    correct: 'トマト'
  },{
    question:'どちらが暑いですか？',
    answers:[
      'なつ',
      'ふゆ'
    ],
    correct: 'なつ'
  },{
    question:'たまごから生まれるのはどちらですか？',
    answers:[
      'ひよこ',
      'うま'
    ],
    correct: 'ひよこ'
  },
];
const quizLength = quiz.length;
let quizIndex = 0;


// const question = 'ぞうとさんまはどちらが大きいですか？';
// const answers = [
//   'ぞう',
//   'さんま'
// ];
// const correct = 'ぞう';

document.getElementById('test-question').textContent = quiz[quizIndex].question;

document.getElementsByTagName('button')[0].textContent = quiz[quizIndex].answers[0];
document.getElementsByTagName('button')[1].textContent = quiz[quizIndex].answers[1];

//正解判定
document.getElementsByTagName('button')[0].addEventListener('click', (e) =>{
  if(quiz[quizIndex].correct === e.target.textContent){
    window.alert('おめでとう！');
  }else{
    window.alert('ざんねん！');
  }

//解答から次の問題へ遷移
  quizIndex++;

  if(quizIndex < quizLength){
    document.getElementById('test-question').textContent = quiz[quizIndex].question;

    document.getElementsByTagName('button')[0].textContent = quiz[quizIndex].answers[0];
    document.getElementsByTagName('button')[1].textContent = quiz[quizIndex].answers[1];

  }else{
    window.alert('よくがんばりました！')
  }
});

document.getElementsByTagName('button')[1].addEventListener('click', (e) =>{
  if(quiz[quizIndex].correct === e.target.textContent){
    window.alert('おめでとう！');
  }else{
    window.alert('ざんねん！');
  }

  quizIndex++;

  if(quizIndex < quizLength){
    document.getElementById('test-question').textContent = quiz[quizIndex].question;

    document.getElementsByTagName('button')[0].textContent = quiz[quizIndex].answers[0];
    document.getElementsByTagName('button')[1].textContent = quiz[quizIndex].answers[1];

  }else{
    window.alert('よくがんばりました！')
  }
});
