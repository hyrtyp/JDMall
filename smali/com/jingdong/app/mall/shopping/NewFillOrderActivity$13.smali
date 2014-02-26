.class Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$13;
.super Ljava/lang/Object;
.source "NewFillOrderActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->showPasswordEdit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$13;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    .line 1062
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$13;)Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;
    .locals 1
    .parameter

    .prologue
    .line 1062
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$13;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 26

    .prologue
    .line 1068
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$13;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    move-object/from16 v22, v0

    #getter for: Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->defray_passwork_input_layout:Landroid/widget/LinearLayout;
    invoke-static/range {v22 .. v22}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->access$23(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)Landroid/widget/LinearLayout;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1069
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$13;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    move-object/from16 v22, v0

    #getter for: Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->defrayEtArray:Ljava/util/ArrayList;
    invoke-static/range {v22 .. v22}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->access$19(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)Ljava/util/ArrayList;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->clear()V

    .line 1070
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$13;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    move-object/from16 v22, v0

    #calls: Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->hideInputKey()V
    invoke-static/range {v22 .. v22}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->access$18(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)V

    .line 1071
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$13;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    move-object/from16 v22, v0

    #getter for: Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->context:Landroid/content/Context;
    invoke-static/range {v22 .. v22}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->access$17(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)Landroid/content/Context;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    .line 1073
    .local v18, res:Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$13;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    move-object/from16 v22, v0

    #getter for: Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;
    invoke-static/range {v22 .. v22}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->access$0(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)Lcom/jingdong/common/entity/NewCurrentOrder;

    move-result-object v22

    if-nez v22, :cond_0

    .line 1214
    .end local v18           #res:Landroid/content/res/Resources;
    :goto_0
    return-void

    .line 1077
    .restart local v18       #res:Landroid/content/res/Resources;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$13;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    move-object/from16 v22, v0

    #getter for: Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;
    invoke-static/range {v22 .. v22}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->access$0(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)Lcom/jingdong/common/entity/NewCurrentOrder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/jingdong/common/entity/NewCurrentOrder;->getIsOpenPaymentPassword()Ljava/lang/Boolean;

    move-result-object v13

    .line 1078
    .local v13, isOpen:Ljava/lang/Boolean;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$13;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    move-object/from16 v22, v0

    #getter for: Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;
    invoke-static/range {v22 .. v22}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->access$0(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)Lcom/jingdong/common/entity/NewCurrentOrder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/jingdong/common/entity/NewCurrentOrder;->getShowSecurityUrl()Ljava/lang/String;

    move-result-object v21

    .line 1079
    .local v21, url:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$13;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    move-object/from16 v22, v0

    #getter for: Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;
    invoke-static/range {v22 .. v22}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->access$0(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)Lcom/jingdong/common/entity/NewCurrentOrder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/jingdong/common/entity/NewCurrentOrder;->getShowSecurityFunctionId()Ljava/lang/String;

    move-result-object v5

    .line 1080
    .local v5, action:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$13;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    move-object/from16 v22, v0

    #getter for: Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;
    invoke-static/range {v22 .. v22}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->access$0(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)Lcom/jingdong/common/entity/NewCurrentOrder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/jingdong/common/entity/NewCurrentOrder;->getShowSecurityMessage()Ljava/lang/String;

    move-result-object v16

    .line 1087
    .local v16, message:Ljava/lang/String;
    if-eqz v13, :cond_1

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_1

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_1

    .line 1093
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$13;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    move-object/from16 v22, v0

    #getter for: Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->pay_password_open_find_layout:Landroid/widget/LinearLayout;
    invoke-static/range {v22 .. v22}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->access$24(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)Landroid/widget/LinearLayout;

    move-result-object v22

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1094
    new-instance v6, Landroid/text/SpannableStringBuilder;

    invoke-direct {v6}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 1095
    .local v6, builder:Landroid/text/SpannableStringBuilder;
    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v22

    if-eqz v22, :cond_4

    .line 1096
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$13;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    move-object/from16 v22, v0

    const v23, 0x7f070361

    invoke-virtual/range {v22 .. v23}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1097
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$13;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    move-object/from16 v22, v0

    #getter for: Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->payPasswordView:Landroid/widget/TextView;
    invoke-static/range {v22 .. v22}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->access$25(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)Landroid/widget/TextView;

    move-result-object v22

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_3

    .end local v16           #message:Ljava/lang/String;
    :goto_1
    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1098
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$13;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    move-object/from16 v22, v0

    #getter for: Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->payPasswordBtn:Landroid/widget/TextView;
    invoke-static/range {v22 .. v22}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->access$26(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)Landroid/widget/TextView;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1104
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$13;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    move-object/from16 v22, v0

    #getter for: Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->payPasswordBtn:Landroid/widget/TextView;
    invoke-static/range {v22 .. v22}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->access$26(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)Landroid/widget/TextView;

    move-result-object v22

    new-instance v23, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$13$1;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2, v5}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$13$1;-><init>(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$13;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1131
    .end local v6           #builder:Landroid/text/SpannableStringBuilder;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$13;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    move-object/from16 v22, v0

    #getter for: Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;
    invoke-static/range {v22 .. v22}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->access$0(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)Lcom/jingdong/common/entity/NewCurrentOrder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/jingdong/common/entity/NewCurrentOrder;->getShowSecurityTitle()Ljava/lang/String;

    move-result-object v19

    .line 1132
    .local v19, title:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$13;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    move-object/from16 v22, v0

    #getter for: Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;
    invoke-static/range {v22 .. v22}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->access$0(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)Lcom/jingdong/common/entity/NewCurrentOrder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/jingdong/common/entity/NewCurrentOrder;->getShowSecuritySubmitKey()Ljava/lang/String;

    move-result-object v14

    .line 1138
    .local v14, key:Ljava/lang/String;
    new-instance v15, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$13;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    move-object/from16 v22, v0

    #getter for: Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->context:Landroid/content/Context;
    invoke-static/range {v22 .. v22}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->access$17(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)Landroid/content/Context;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-direct {v15, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1139
    .local v15, layout:Landroid/widget/LinearLayout;
    new-instance v17, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$13;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    move-object/from16 v22, v0

    #getter for: Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->context:Landroid/content/Context;
    invoke-static/range {v22 .. v22}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->access$17(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)Landroid/content/Context;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 1141
    .local v17, passwordLayout:Landroid/widget/RelativeLayout;
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1142
    new-instance v20, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$13;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    move-object/from16 v22, v0

    #getter for: Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->context:Landroid/content/Context;
    invoke-static/range {v22 .. v22}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->access$17(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)Landroid/content/Context;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1143
    .local v20, tv:Landroid/widget/TextView;
    const v22, 0x7f0b0022

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v22

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1144
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1145
    const/high16 v22, -0x1

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1146
    new-instance v8, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$13;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    move-object/from16 v22, v0

    #getter for: Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->context:Landroid/content/Context;
    invoke-static/range {v22 .. v22}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->access$17(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)Landroid/content/Context;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-direct {v8, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 1147
    .local v8, et:Landroid/widget/EditText;
    new-instance v12, Lcom/jingdong/app/mall/ime/JDInputMethod;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$13;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    move-object/from16 v22, v0

    #getter for: Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->context:Landroid/content/Context;
    invoke-static/range {v22 .. v22}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->access$17(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)Landroid/content/Context;

    move-result-object v22

    check-cast v22, Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$13;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    move-object/from16 v23, v0

    const v24, 0x7f0c0213

    invoke-virtual/range {v23 .. v24}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v12, v0, v8, v1}, Lcom/jingdong/app/mall/ime/JDInputMethod;-><init>(Landroid/app/Activity;Landroid/widget/EditText;Landroid/view/View;)V

    .line 1148
    .local v12, inputmethod:Lcom/jingdong/app/mall/ime/JDInputMethod;
    invoke-virtual {v12}, Lcom/jingdong/app/mall/ime/JDInputMethod;->initIME()V

    .line 1149
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$13;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    move-object/from16 v22, v0

    #getter for: Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->inputmethodArray:Ljava/util/ArrayList;
    invoke-static/range {v22 .. v22}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->access$27(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)Ljava/util/ArrayList;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1150
    invoke-virtual {v8, v14}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 1151
    const v22, 0x7f02002f

    move/from16 v0, v22

    invoke-virtual {v8, v0}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 1152
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v8, v0}, Landroid/widget/EditText;->setScrollContainer(Z)V

    .line 1153
    invoke-virtual {v8}, Landroid/widget/EditText;->setSingleLine()V

    .line 1154
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 1155
    invoke-virtual {v8}, Landroid/widget/EditText;->postInvalidate()V

    .line 1156
    new-instance v22, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v23, -0x1

    const/16 v24, -0x2

    invoke-direct/range {v22 .. v24}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1157
    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v22, 0x437c

    invoke-static/range {v22 .. v22}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v22

    const/16 v23, -0x2

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-direct {v9, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1158
    .local v9, etParams:Landroid/widget/RelativeLayout$LayoutParams;
    const v22, 0x7f0b0022

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v22

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    const v23, 0x7f0b0024

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v23

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    const v24, 0x7f0b0023

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v24

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    const/16 v25, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1159
    const/16 v22, 0x9

    move/from16 v0, v22

    invoke-virtual {v9, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1160
    const/16 v22, 0xf

    move/from16 v0, v22

    invoke-virtual {v9, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1161
    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1162
    new-instance v22, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v23, -0x1

    const/16 v24, -0x2

    invoke-direct/range {v22 .. v24}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1164
    new-instance v10, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$13;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    move-object/from16 v22, v0

    #getter for: Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->context:Landroid/content/Context;
    invoke-static/range {v22 .. v22}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->access$17(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)Landroid/content/Context;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-direct {v10, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1165
    .local v10, explainIamge:Landroid/widget/ImageView;
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 1166
    sget-object v22, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1167
    const v22, 0x7f020224

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1168
    new-instance v11, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v22, 0x4200

    invoke-static/range {v22 .. v22}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v22

    const/high16 v23, 0x4200

    invoke-static/range {v23 .. v23}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-direct {v11, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1169
    .local v11, imageLP:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v22, 0x0

    const/16 v23, 0x0

    const v24, 0x7f0b0023

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v24

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    const/16 v25, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1170
    const/16 v22, 0xb

    move/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1171
    const/16 v22, 0xf

    move/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1172
    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1174
    new-instance v22, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$13$2;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v13}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$13$2;-><init>(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$13;Ljava/lang/Boolean;)V

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1182
    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1183
    if-eqz v13, :cond_2

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_2

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_2

    .line 1185
    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1189
    :cond_2
    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1190
    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$13;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    move-object/from16 v22, v0

    #getter for: Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->defrayEtArray:Ljava/util/ArrayList;
    invoke-static/range {v22 .. v22}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->access$19(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)Ljava/util/ArrayList;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$13;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    move-object/from16 v22, v0

    #getter for: Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->defray_passwork_input_layout:Landroid/widget/LinearLayout;
    invoke-static/range {v22 .. v22}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->access$23(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)Landroid/widget/LinearLayout;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$13;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    move-object/from16 v22, v0

    new-instance v23, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$13$3;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v8}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$13$3;-><init>(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$13;Landroid/widget/EditText;)V

    invoke-virtual/range {v22 .. v23}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->post(Ljava/lang/Runnable;)V

    .line 1206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$13;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    move-object/from16 v22, v0

    #getter for: Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mLayoutDefaryPassword:Landroid/widget/LinearLayout;
    invoke-static/range {v22 .. v22}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->access$29(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)Landroid/widget/LinearLayout;

    move-result-object v22

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/LinearLayout;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1207
    .end local v5           #action:Ljava/lang/String;
    .end local v8           #et:Landroid/widget/EditText;
    .end local v9           #etParams:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v10           #explainIamge:Landroid/widget/ImageView;
    .end local v11           #imageLP:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v12           #inputmethod:Lcom/jingdong/app/mall/ime/JDInputMethod;
    .end local v13           #isOpen:Ljava/lang/Boolean;
    .end local v14           #key:Ljava/lang/String;
    .end local v15           #layout:Landroid/widget/LinearLayout;
    .end local v17           #passwordLayout:Landroid/widget/RelativeLayout;
    .end local v18           #res:Landroid/content/res/Resources;
    .end local v19           #title:Ljava/lang/String;
    .end local v20           #tv:Landroid/widget/TextView;
    .end local v21           #url:Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 1211
    .local v7, e:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 1097
    .end local v7           #e:Ljava/lang/Exception;
    .restart local v5       #action:Ljava/lang/String;
    .restart local v6       #builder:Landroid/text/SpannableStringBuilder;
    .restart local v13       #isOpen:Ljava/lang/Boolean;
    .restart local v16       #message:Ljava/lang/String;
    .restart local v18       #res:Landroid/content/res/Resources;
    .restart local v21       #url:Ljava/lang/String;
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$13;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    move-object/from16 v23, v0

    const v24, 0x7f070360

    invoke-virtual/range {v23 .. v24}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->getString(I)Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_1

    .line 1100
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$13;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    move-object/from16 v22, v0

    const v23, 0x7f07035e

    invoke-virtual/range {v22 .. v23}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1101
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$13;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    move-object/from16 v22, v0

    #getter for: Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->payPasswordView:Landroid/widget/TextView;
    invoke-static/range {v22 .. v22}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->access$25(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)Landroid/widget/TextView;

    move-result-object v22

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_5

    .end local v16           #message:Ljava/lang/String;
    :goto_3
    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1102
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$13;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    move-object/from16 v22, v0

    #getter for: Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->payPasswordBtn:Landroid/widget/TextView;
    invoke-static/range {v22 .. v22}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->access$26(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)Landroid/widget/TextView;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 1101
    .restart local v16       #message:Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$13;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    move-object/from16 v23, v0

    const v24, 0x7f07035f

    invoke-virtual/range {v23 .. v24}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v16

    goto :goto_3
.end method
