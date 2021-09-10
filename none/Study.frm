VERSION 5.00
Begin VB.Form Study 
   Caption         =   "学习"
   ClientHeight    =   6585
   ClientLeft      =   5325
   ClientTop       =   3345
   ClientWidth     =   9450
   ControlBox      =   0   'False
   LinkTopic       =   "Form1"
   ScaleHeight     =   6585
   ScaleWidth      =   9450
   Begin VB.Timer Timer1 
      Interval        =   500
      Left            =   3600
      Top             =   5760
   End
   Begin VB.TextBox Text1 
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   15.75
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   5055
      Left            =   120
      Locked          =   -1  'True
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   3
      Top             =   240
      Width           =   9015
   End
   Begin VB.CommandButton Command2 
      Caption         =   "下一页(&N)"
      Height          =   975
      Left            =   6840
      TabIndex        =   2
      Top             =   5520
      Width           =   2055
   End
   Begin VB.CommandButton Command1 
      Caption         =   "上一页(&B)"
      Height          =   975
      Left            =   4200
      TabIndex        =   1
      Top             =   5520
      Width           =   1935
   End
   Begin VB.Label Label1 
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   36
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   360
      TabIndex        =   0
      Top             =   5520
      Width           =   2895
   End
End
Attribute VB_Name = "Study"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim no As Byte, text As String
Dim texts(1 To 5)

Private Sub Command1_Click()
    no = no - 1
    If no = 1 Then Command1.Enabled = False
    text = texts(no)
    Text1.text = text
    Label1.Caption = "第" & Str(no) & "页"
    Me.Caption = "学习中: 第" & Str(no) & "页"
End Sub

Private Sub Command2_Click()
    If no = 5 Then
        MsgBox "即将进入测试阶段", 64, "Dialog"
        test.Show
        Me.Hide
    Else
        no = no + 1
        If no > 1 Then Command1.Enabled = True
        text = texts(no)
        Text1.text = text
        Label1.Caption = "第" & Str(no) & "页"
        Me.Caption = "学习中: 第" & Str(no) & "页"
    End If
End Sub

Private Sub Form_GotFocus()
    'Me.Caption = "学习中: 第" & Str(no) & "页"
End Sub

Private Sub Form_Load()
    no = 0
    text = ""
    Command1.Enabled = False
    Command2.Enabled = False
    Text1.text = "点击以开始"
    texts(1) = "五四运动，是1919年5月4日发生在北京的一场以青年学生为主，广大群众、市民、工商人士等阶层共同参与的，通过示威游行、请愿、罢工、暴力对抗政府等多种形式进行的爱国运动，是中国人民彻底的反对帝国主义、封建主义的爱国运动，又称“五四风雷”。起因，第一次世界大战期间，欧洲列强无暇东顾，日本乘机加强对中国的侵略，严重损害了中国的主权。中国人民的反日情绪日渐增长。1919年1月，英、美、法、日、意等战胜国在巴黎召开对德和会，决定由日本继承德国在中国山东的特权。中国是参加对德宣战的战胜国之一，但北洋军阀政府却准备接受这个决定。这次和会上中国外交的失败，引发了伟大的五四运动。从1918年11月的“公理战胜强权”庆典，到次年1月的巴黎会议，短短两个月时间，当时的中国充分诠释了“自古弱国无外交”的定律，所谓的“公理战胜强权”不过是一个美丽的童话。面对这样屈辱的局面，从5月4日开始，北京的学生纷纷罢课，组织演讲、宣传，随后天津、上海、广州、南京、杭州、武汉、济南的学生、工人也给予支持。中华人民共和国建立后，5月4日被中央人民政府政务院正式定为青年节。2019年4月30日，纪念五四运动100周年大会在人民大会堂举行。"
    texts(2) = "五卅运动指1925年5月30日爆发的反帝爱国运动。1925年5月间，上海、青岛的日本纱厂先后发生工人罢工的斗争，遭到日本帝国主义和北洋军阀的镇压。上海内外棉第七厂日本资本家在5月15日枪杀了工人顾正红，并伤工人十余人。29日青岛工人被反动政府屠杀8人。5月30日，上海二千余学生分头在公共租界各马路进行宣传讲演，一百余名遭巡捕（租界内的警察）逮捕，被拘押在南京路老间巡捕房内，引起了学生和市民的极大愤慨，有近万人聚集在巡捕房门口，要求释放被捕学生。英帝国主义的巡捕向群众开枪，打死打伤许多人。这就是震惊中外的五卅惨案。6月，英日等帝国主义在上海和其他地方继续进行屠杀。这些屠杀事件激起了全国人民的公愤。广大的工人、学生和部分工商业者，在许多城市和县镇举行游行示威和罢工、罢课、罢市，形成了全国规模的反帝爱国运动高潮。"
    texts(3) = "《新青年》是在20世纪20年代中国一份具有影响力的革命杂志，原名《青年杂志》，第二卷起改称《新青年》。在五四运动期间起到重要作用。自1915年9月15日创刊号至1926年7月终刊共出9卷54号。由陈独秀在上海创立，群益书社发行。该杂志发起新文化运动，并且宣传倡导民主与科学和新文学。"
    texts(4) = "秋收起义是毛泽东在湖南东部和江西西部领导的工农革命军（即红军）举行的一次武装起义。1927年7月15日，汪精卫控制下的武汉国民政府公开宣布“分共”，背叛了革命。中国共产党从此转入地下，轰轰烈烈的大革命失败了。1927年8月7日在汉口召开紧急会议，确定了开展土地革命和武装反抗国民党反动派的总方针，决定在群众基础较好的湘鄂粤赣四省发动农民举行秋收起义。1927年9月9日，湘赣边界秋收起义按预定计划爆发。9月19日，秋收起义部队在文家市会师 ，毛泽东主持前委会议，及时作出从进攻大城市转向农村进军的决定，初步形成了农村包围城市的战略思想。秋收起义是继南昌起义之后，中国共产党领导的又一次著名的武装起义，是中共党史军史上的三大起义之一。中国人民革命史开始了具有决定意义的新起点。虽然秋收起义结果是失败的，但它却开创了一条新的道路，也开辟了第一个在农村的根据地，为后来各地工农红军和农村革命根据地的大规模发展奠定了基础。秋收起义是中国共产党第一次在武装斗争中公开打出了自己的旗号，人民军队历史上第一面军旗（带有镰刀、斧头、五角星的工农革命军军旗）的诞生，在全国人民面前彰显了中国共产党独立领导革命战争的决心。"
    texts(5) = "1936年12月12日，为挽救民族危亡、劝谏蒋介石改变“攘外必先安内”的既定国策、停止内战一致抗日，张学良、杨虎城毅然在临潼对蒋介石实行“兵谏”，扣留来陕督战的蒋介石，发动了震惊中外的“西安事变”，亦称双十二事变。提出抗日救国八项政治主张，逼蒋介石抗日。1936年12月25日，在中共中央和周恩来等人的努力下，蒋介石接受“停止内战、联共抗日”等六项主张，为“西安事变”的和平解决奠定了基础。西安事变的和平解决为抗日民族统一战线的建立准备了必要的前提，成为由国内战争走向抗日民族战争的转折点。"
End Sub

Private Sub Form_LostFocus()
    'Me.Caption = "中: 第" & Str(no) & "页"
End Sub
Private Sub Text1_Click()
    If no = 0 Then
        no = no + 1
        Command2.Enabled = True
        text = texts(no)
        Text1.text = text
        Label1.Caption = "第" & Str(no) & "页"
        Me.Caption = "学习中: 第" & Str(no) & "页"
    End If
End Sub

