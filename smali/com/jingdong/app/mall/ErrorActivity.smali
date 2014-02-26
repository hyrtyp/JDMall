.class public Lcom/jingdong/app/mall/ErrorActivity;
.super Landroid/app/Activity;
.source "ErrorActivity.java"


# instance fields
.field private btnCancel:Landroid/widget/Button;

.field private btnSubmit:Landroid/widget/Button;

.field private checkBox:Landroid/widget/CheckBox;

.field private editText:Landroid/widget/EditText;

.field private errorStr:Ljava/lang/String;

.field private isKill:Z

.field private isRestart:Z

.field private loading:Landroid/app/ProgressDialog;

.field private msg:Ljava/lang/String;

.field private textView:Landroid/widget/TextView;

.field private user:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jingdong/app/mall/ErrorActivity;->isKill:Z

    .line 45
    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/ErrorActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/jingdong/app/mall/ErrorActivity;->isRestart:Z

    return-void
.end method

.method static synthetic access$1(Lcom/jingdong/app/mall/ErrorActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 183
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/ErrorActivity;->myOnClick(I)V

    return-void
.end method

.method static synthetic access$2(Lcom/jingdong/app/mall/ErrorActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/jingdong/app/mall/ErrorActivity;->isKill:Z

    return-void
.end method

.method static synthetic access$3(Lcom/jingdong/app/mall/ErrorActivity;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 268
    invoke-direct {p0, p1, p2}, Lcom/jingdong/app/mall/ErrorActivity;->doPost(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$4(Lcom/jingdong/app/mall/ErrorActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 206
    invoke-direct {p0}, Lcom/jingdong/app/mall/ErrorActivity;->isRestart()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5(Lcom/jingdong/app/mall/ErrorActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 216
    invoke-direct {p0}, Lcom/jingdong/app/mall/ErrorActivity;->killProcess()V

    return-void
.end method

.method private doPost(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 5
    .parameter "functionId"
    .parameter "json"

    .prologue
    .line 270
    :try_start_0
    new-instance v3, Lcom/jingdong/common/utils/HttpGroup$HttpGroupSetting;

    invoke-direct {v3}, Lcom/jingdong/common/utils/HttpGroup$HttpGroupSetting;-><init>()V

    .line 271
    .local v3, setting:Lcom/jingdong/common/utils/HttpGroup$HttpGroupSetting;
    const/16 v4, 0x3e8

    invoke-virtual {v3, v4}, Lcom/jingdong/common/utils/HttpGroup$HttpGroupSetting;->setPriority(I)V

    .line 272
    const/16 v4, 0x3e8

    invoke-virtual {v3, v4}, Lcom/jingdong/common/utils/HttpGroup$HttpGroupSetting;->setType(I)V

    .line 273
    new-instance v1, Lcom/jingdong/common/utils/HttpGroup$HttpGroupaAsynPool;

    invoke-direct {v1, v3}, Lcom/jingdong/common/utils/HttpGroup$HttpGroupaAsynPool;-><init>(Lcom/jingdong/common/utils/HttpGroup$HttpGroupSetting;)V

    .line 274
    .local v1, httpGroup:Lcom/jingdong/common/utils/HttpGroup$HttpGroupaAsynPool;
    new-instance v2, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;

    invoke-direct {v2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;-><init>()V

    .line 275
    .local v2, httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    invoke-virtual {v2, p1}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setFunctionId(Ljava/lang/String;)V

    .line 276
    invoke-virtual {v2, p2}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setJsonParams(Lorg/json/JSONObject;)V

    .line 277
    new-instance v4, Lcom/jingdong/app/mall/ErrorActivity$9;

    invoke-direct {v4, p0}, Lcom/jingdong/app/mall/ErrorActivity$9;-><init>(Lcom/jingdong/app/mall/ErrorActivity;)V

    invoke-virtual {v2, v4}, Lcom/jingdong/common/utils/HttpGroup$HttpSetting;->setListener(Lcom/jingdong/common/utils/HttpGroup$HttpTaskListener;)V

    .line 312
    invoke-virtual {v1, v2}, Lcom/jingdong/common/utils/HttpGroup$HttpGroupaAsynPool;->add(Lcom/jingdong/common/utils/HttpGroup$HttpSetting;)Lcom/jingdong/common/utils/HttpGroup$HttpRequest;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 357
    .end local v1           #httpGroup:Lcom/jingdong/common/utils/HttpGroup$HttpGroupaAsynPool;
    .end local v2           #httpSetting:Lcom/jingdong/common/utils/HttpGroup$HttpSetting;
    .end local v3           #setting:Lcom/jingdong/common/utils/HttpGroup$HttpGroupSetting;
    :goto_0
    return-void

    .line 314
    :catch_0
    move-exception v0

    .line 315
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private isContainsPlug()Z
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/jingdong/app/mall/ErrorActivity;->errorStr:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jingdong/app/mall/ErrorActivity;->errorStr:Ljava/lang/String;

    const-string v1, "PersonelPlugFragment"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/jingdong/app/mall/ErrorActivity;->errorStr:Ljava/lang/String;

    const-string v1, "MoreFragment"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/jingdong/app/mall/ErrorActivity;->errorStr:Ljava/lang/String;

    const-string v1, "ProductDetailPlugFragment"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/jingdong/app/mall/ErrorActivity;->errorStr:Ljava/lang/String;

    const-string v1, "MyFragment"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 128
    :cond_0
    const/4 v0, 0x1

    .line 131
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isRestart()Z
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/jingdong/app/mall/ErrorActivity;->checkBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    .line 208
    iget-boolean v0, p0, Lcom/jingdong/app/mall/ErrorActivity;->isRestart:Z

    .line 210
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private killProcess()V
    .locals 1

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/jingdong/app/mall/ErrorActivity;->finish()V

    .line 219
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 220
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 221
    return-void
.end method

.method private myOnClick(I)V
    .locals 2
    .parameter "type"

    .prologue
    .line 184
    packed-switch p1, :pswitch_data_0

    .line 199
    :goto_0
    return-void

    .line 186
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/jingdong/app/mall/ErrorActivity;->editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|| version code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/jingdong/common/utils/StatisticsReportUtil;->getSoftwareVersionCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ||"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/ErrorActivity;->errorStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/ErrorActivity;->errorStr:Ljava/lang/String;

    .line 188
    invoke-direct {p0}, Lcom/jingdong/app/mall/ErrorActivity;->isContainsPlug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    const v1, 0x7f070558

    invoke-static {v1}, Lcom/jingdong/app/mall/utils/CommonUtil;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/ErrorActivity;->errorStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/ErrorActivity;->errorStr:Ljava/lang/String;

    .line 191
    :cond_0
    invoke-direct {p0}, Lcom/jingdong/app/mall/ErrorActivity;->onSubmitError()V

    goto :goto_0

    .line 195
    :pswitch_1
    invoke-direct {p0}, Lcom/jingdong/app/mall/ErrorActivity;->killProcess()V

    goto :goto_0

    .line 184
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private onActivity()V
    .locals 5

    .prologue
    .line 135
    new-instance v1, Lcom/jingdong/app/mall/ErrorActivity$2;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/ErrorActivity$2;-><init>(Lcom/jingdong/app/mall/ErrorActivity;)V

    .line 143
    .local v1, onSubmit:Landroid/view/View$OnClickListener;
    new-instance v0, Lcom/jingdong/app/mall/ErrorActivity$3;

    invoke-direct {v0, p0}, Lcom/jingdong/app/mall/ErrorActivity$3;-><init>(Lcom/jingdong/app/mall/ErrorActivity;)V

    .line 150
    .local v0, onCancel:Landroid/view/View$OnClickListener;
    iget-object v2, p0, Lcom/jingdong/app/mall/ErrorActivity;->btnSubmit:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    iget-object v2, p0, Lcom/jingdong/app/mall/ErrorActivity;->btnCancel:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    iget-object v2, p0, Lcom/jingdong/app/mall/ErrorActivity;->textView:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/jingdong/app/mall/ErrorActivity;->textView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "||"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/jingdong/app/mall/ErrorActivity;->msg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    return-void
.end method

.method private onDialog(Landroid/view/View;)V
    .locals 3
    .parameter "layout"

    .prologue
    .line 156
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/ErrorActivity;->msg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0703cc

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0703cd

    new-instance v2, Lcom/jingdong/app/mall/ErrorActivity$4;

    invoke-direct {v2, p0}, Lcom/jingdong/app/mall/ErrorActivity$4;-><init>(Lcom/jingdong/app/mall/ErrorActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 162
    const v1, 0x7f0703ce

    new-instance v2, Lcom/jingdong/app/mall/ErrorActivity$5;

    invoke-direct {v2, p0}, Lcom/jingdong/app/mall/ErrorActivity$5;-><init>(Lcom/jingdong/app/mall/ErrorActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 168
    new-instance v1, Lcom/jingdong/app/mall/ErrorActivity$6;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/ErrorActivity$6;-><init>(Lcom/jingdong/app/mall/ErrorActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 180
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 181
    return-void
.end method

.method private onSubmitError()V
    .locals 9

    .prologue
    const/16 v4, 0x4e20

    const v8, 0x7f0703d1

    const v7, 0x7f0703d0

    const/4 v6, 0x1

    .line 227
    const-string v1, "crash"

    .line 229
    .local v1, functionId:Ljava/lang/String;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 230
    .local v2, json:Lorg/json/JSONObject;
    iget-object v3, p0, Lcom/jingdong/app/mall/ErrorActivity;->errorStr:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v4, :cond_0

    .line 231
    iget-object v3, p0, Lcom/jingdong/app/mall/ErrorActivity;->errorStr:Ljava/lang/String;

    const/4 v4, 0x0

    const/16 v5, 0x4e20

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/jingdong/app/mall/ErrorActivity;->errorStr:Ljava/lang/String;

    .line 232
    :cond_0
    const-string v3, "msg"

    iget-object v4, p0, Lcom/jingdong/app/mall/ErrorActivity;->errorStr:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 233
    const-string v3, "partner"

    const-string v4, "partner"

    invoke-static {v4}, Lcom/jingdong/common/config/Configuration;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 234
    const/4 v3, 0x0

    const v4, 0x7f0703cf

    invoke-virtual {p0, v4}, Lcom/jingdong/app/mall/ErrorActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v3, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/jingdong/app/mall/ErrorActivity;->loading:Landroid/app/ProgressDialog;

    .line 235
    iget-object v3, p0, Lcom/jingdong/app/mall/ErrorActivity;->loading:Landroid/app/ProgressDialog;

    new-instance v4, Lcom/jingdong/app/mall/ErrorActivity$7;

    invoke-direct {v4, p0}, Lcom/jingdong/app/mall/ErrorActivity$7;-><init>(Lcom/jingdong/app/mall/ErrorActivity;)V

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 245
    new-instance v3, Lcom/jingdong/app/mall/ErrorActivity$8;

    invoke-direct {v3, p0, v2}, Lcom/jingdong/app/mall/ErrorActivity$8;-><init>(Lcom/jingdong/app/mall/ErrorActivity;Lorg/json/JSONObject;)V

    .line 251
    invoke-virtual {v3}, Lcom/jingdong/app/mall/ErrorActivity$8;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    iget-boolean v3, p0, Lcom/jingdong/app/mall/ErrorActivity;->isRestart:Z

    if-eqz v3, :cond_3

    .line 257
    invoke-virtual {p0, v7}, Lcom/jingdong/app/mall/ErrorActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 261
    :goto_0
    invoke-virtual {p0}, Lcom/jingdong/app/mall/ErrorActivity;->finish()V

    .line 263
    .end local v2           #json:Lorg/json/JSONObject;
    :goto_1
    return-void

    .line 252
    :catch_0
    move-exception v0

    .line 253
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 256
    iget-boolean v3, p0, Lcom/jingdong/app/mall/ErrorActivity;->isRestart:Z

    if-eqz v3, :cond_1

    .line 257
    invoke-virtual {p0, v7}, Lcom/jingdong/app/mall/ErrorActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 261
    :goto_2
    invoke-virtual {p0}, Lcom/jingdong/app/mall/ErrorActivity;->finish()V

    goto :goto_1

    .line 259
    :cond_1
    invoke-virtual {p0, v8}, Lcom/jingdong/app/mall/ErrorActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 255
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 256
    iget-boolean v4, p0, Lcom/jingdong/app/mall/ErrorActivity;->isRestart:Z

    if-eqz v4, :cond_2

    .line 257
    invoke-virtual {p0, v7}, Lcom/jingdong/app/mall/ErrorActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 261
    :goto_3
    invoke-virtual {p0}, Lcom/jingdong/app/mall/ErrorActivity;->finish()V

    .line 262
    throw v3

    .line 259
    :cond_2
    invoke-virtual {p0, v8}, Lcom/jingdong/app/mall/ErrorActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_3

    .restart local v2       #json:Lorg/json/JSONObject;
    :cond_3
    invoke-virtual {p0, v8}, Lcom/jingdong/app/mall/ErrorActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private setSettingTime()V
    .locals 4

    .prologue
    .line 374
    :try_start_0
    const-string v2, "sleep_setting_time"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/jingdong/app/mall/utils/CommonUtil;->getIntFromPreference(Ljava/lang/String;I)I

    move-result v1

    .line 375
    .local v1, sleepSettingTime:I
    if-lez v1, :cond_0

    .line 376
    invoke-virtual {p0}, Lcom/jingdong/app/mall/ErrorActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_off_timeout"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    .line 377
    .local v0, save:Z
    if-eqz v0, :cond_0

    .line 378
    const-string v2, "sleep_setting_time"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/jingdong/app/mall/utils/CommonUtil;->putIntToPreference(Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 387
    .end local v0           #save:Z
    .end local v1           #sleepSettingTime:I
    :cond_0
    :goto_0
    return-void

    .line 381
    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const v7, 0x7f0c009c

    const v6, 0x7f030013

    const/16 v3, 0x400

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 66
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    invoke-virtual {p0}, Lcom/jingdong/app/mall/ErrorActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 70
    invoke-virtual {p0, v5}, Lcom/jingdong/app/mall/ErrorActivity;->requestWindowFeature(I)Z

    .line 71
    invoke-virtual {p0}, Lcom/jingdong/app/mall/ErrorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "user"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/jingdong/app/mall/ErrorActivity;->user:Ljava/lang/String;

    .line 72
    invoke-virtual {p0}, Lcom/jingdong/app/mall/ErrorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "error"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/jingdong/app/mall/ErrorActivity;->errorStr:Ljava/lang/String;

    .line 74
    invoke-direct {p0}, Lcom/jingdong/app/mall/ErrorActivity;->isContainsPlug()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 75
    invoke-static {v4}, Lcom/jingdong/app/mall/utils/CommonUtil;->setPlugOn(Z)V

    .line 78
    :cond_0
    invoke-direct {p0}, Lcom/jingdong/app/mall/ErrorActivity;->setSettingTime()V

    .line 79
    const v2, 0x7f0703cb

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/ErrorActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/jingdong/app/mall/ErrorActivity;->msg:Ljava/lang/String;

    .line 80
    const/4 v1, 0x0

    .line 81
    .local v1, type:Z
    if-eqz v1, :cond_1

    .line 82
    const v2, 0x103000b

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/ErrorActivity;->setTheme(I)V

    .line 83
    invoke-virtual {p0, v6}, Lcom/jingdong/app/mall/ErrorActivity;->setContentView(I)V

    .line 84
    const v2, 0x7f0c009e

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/ErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 85
    const v2, 0x7f0c009b

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/ErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/jingdong/app/mall/ErrorActivity;->textView:Landroid/widget/TextView;

    .line 86
    const v2, 0x7f0c009f

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/ErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/jingdong/app/mall/ErrorActivity;->btnSubmit:Landroid/widget/Button;

    .line 87
    const v2, 0x7f0c00a0

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/ErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/jingdong/app/mall/ErrorActivity;->btnCancel:Landroid/widget/Button;

    .line 88
    invoke-virtual {p0, v7}, Lcom/jingdong/app/mall/ErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/jingdong/app/mall/ErrorActivity;->checkBox:Landroid/widget/CheckBox;

    .line 89
    const v2, 0x7f0c009d

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/ErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/jingdong/app/mall/ErrorActivity;->editText:Landroid/widget/EditText;

    .line 90
    invoke-direct {p0}, Lcom/jingdong/app/mall/ErrorActivity;->onActivity()V

    .line 108
    :goto_0
    iget-object v2, p0, Lcom/jingdong/app/mall/ErrorActivity;->checkBox:Landroid/widget/CheckBox;

    new-instance v3, Lcom/jingdong/app/mall/ErrorActivity$1;

    invoke-direct {v3, p0}, Lcom/jingdong/app/mall/ErrorActivity$1;-><init>(Lcom/jingdong/app/mall/ErrorActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 115
    iget-object v2, p0, Lcom/jingdong/app/mall/ErrorActivity;->msg:Ljava/lang/String;

    invoke-static {p0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 116
    return-void

    .line 92
    :cond_1
    const/high16 v2, 0x7f03

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/ErrorActivity;->setContentView(I)V

    .line 93
    const v2, 0x7f0c0014

    invoke-virtual {p0, v2}, Lcom/jingdong/app/mall/ErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 94
    const/4 v2, 0x0

    invoke-static {v6, v2}, Lcom/jingdong/common/utils/ImageUtil;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 95
    .local v0, layout:Landroid/view/View;
    const v2, 0x7f0c009d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/jingdong/app/mall/ErrorActivity;->editText:Landroid/widget/EditText;

    .line 96
    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/jingdong/app/mall/ErrorActivity;->checkBox:Landroid/widget/CheckBox;

    .line 97
    iget-object v2, p0, Lcom/jingdong/app/mall/ErrorActivity;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    iput-boolean v2, p0, Lcom/jingdong/app/mall/ErrorActivity;->isRestart:Z

    .line 98
    invoke-direct {p0, v0}, Lcom/jingdong/app/mall/ErrorActivity;->onDialog(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 361
    invoke-direct {p0}, Lcom/jingdong/app/mall/ErrorActivity;->killProcess()V

    .line 362
    const/4 v0, 0x0

    return v0
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 367
    iget-boolean v0, p0, Lcom/jingdong/app/mall/ErrorActivity;->isKill:Z

    if-eqz v0, :cond_0

    .line 368
    invoke-direct {p0}, Lcom/jingdong/app/mall/ErrorActivity;->killProcess()V

    .line 369
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 370
    return-void
.end method
