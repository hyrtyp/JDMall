.class public Lcom/jingdong/app/lib/base/activity/DialogController;
.super Ljava/lang/Object;
.source "DialogController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field protected alertDialog:Landroid/app/AlertDialog;

.field protected builder:Landroid/app/AlertDialog$Builder;

.field private canBack:Z

.field private canceledOnTouchOutside:Z

.field private initMessage:Ljava/lang/CharSequence;

.field private initNegativeButton:Ljava/lang/CharSequence;

.field private initNeutralButton:Ljava/lang/CharSequence;

.field private initPositiveButton:Ljava/lang/CharSequence;

.field private initTitle:Ljava/lang/CharSequence;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jingdong/app/lib/base/activity/DialogController;->canBack:Z

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jingdong/app/lib/base/activity/DialogController;->canceledOnTouchOutside:Z

    .line 19
    return-void
.end method

.method public static getSimpleDialogController(Landroid/content/Context;[Ljava/lang/String;ILandroid/content/DialogInterface$OnClickListener;)Lcom/jingdong/app/lib/base/activity/DialogController;
    .locals 2
    .parameter "context"
    .parameter "dataSet"
    .parameter "checkedItem"
    .parameter "listener"

    .prologue
    .line 237
    new-instance v0, Lcom/jingdong/app/lib/base/activity/DialogController;

    invoke-direct {v0}, Lcom/jingdong/app/lib/base/activity/DialogController;-><init>()V

    .line 238
    .local v0, dialogController:Lcom/jingdong/app/lib/base/activity/DialogController;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jingdong/app/lib/base/activity/DialogController;->setCanBack(Z)V

    .line 239
    invoke-virtual {v0, p0}, Lcom/jingdong/app/lib/base/activity/DialogController;->init(Landroid/content/Context;)V

    .line 240
    iget-object v1, v0, Lcom/jingdong/app/lib/base/activity/DialogController;->builder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, p1, p2, p3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 241
    return-object v0
.end method


# virtual methods
.method public getButton(I)Landroid/widget/Button;
    .locals 2
    .parameter "whichButton"

    .prologue
    .line 202
    const/4 v0, 0x0

    .line 203
    .local v0, result:Landroid/widget/Button;
    iget-object v1, p0, Lcom/jingdong/app/lib/base/activity/DialogController;->alertDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 204
    iget-object v1, p0, Lcom/jingdong/app/lib/base/activity/DialogController;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 206
    :cond_0
    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 39
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jingdong/app/lib/base/activity/DialogController;->builder:Landroid/app/AlertDialog$Builder;

    .line 40
    invoke-virtual {p0}, Lcom/jingdong/app/lib/base/activity/DialogController;->initContent()V

    .line 41
    invoke-virtual {p0}, Lcom/jingdong/app/lib/base/activity/DialogController;->initButton()V

    .line 42
    return-void
.end method

.method protected initButton()V
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/jingdong/app/lib/base/activity/DialogController;->initPositiveButton:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/jingdong/app/lib/base/activity/DialogController;->builder:Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/jingdong/app/lib/base/activity/DialogController;->initPositiveButton:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/lib/base/activity/DialogController;->initNeutralButton:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/jingdong/app/lib/base/activity/DialogController;->builder:Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/jingdong/app/lib/base/activity/DialogController;->initNeutralButton:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/jingdong/app/lib/base/activity/DialogController;->initNegativeButton:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 89
    iget-object v0, p0, Lcom/jingdong/app/lib/base/activity/DialogController;->builder:Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/jingdong/app/lib/base/activity/DialogController;->initNegativeButton:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 92
    :cond_2
    return-void
.end method

.method protected initContent()V
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/jingdong/app/lib/base/activity/DialogController;->initTitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/jingdong/app/lib/base/activity/DialogController;->builder:Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/jingdong/app/lib/base/activity/DialogController;->initTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/lib/base/activity/DialogController;->initMessage:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 60
    iget-object v0, p0, Lcom/jingdong/app/lib/base/activity/DialogController;->builder:Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/jingdong/app/lib/base/activity/DialogController;->initMessage:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 64
    :cond_1
    iget-object v0, p0, Lcom/jingdong/app/lib/base/activity/DialogController;->view:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 65
    iget-object v0, p0, Lcom/jingdong/app/lib/base/activity/DialogController;->builder:Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/jingdong/app/lib/base/activity/DialogController;->view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 69
    :cond_2
    iget-object v0, p0, Lcom/jingdong/app/lib/base/activity/DialogController;->builder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 70
    return-void
.end method

.method public isCanBack()Z
    .locals 1

    .prologue
    .line 223
    iget-boolean v0, p0, Lcom/jingdong/app/lib/base/activity/DialogController;->canBack:Z

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 118
    return-void
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/jingdong/app/lib/base/activity/DialogController;->isCanBack()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x4

    if-ne v0, p2, :cond_0

    .line 111
    const/4 v0, 0x1

    .line 113
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCanBack(Z)V
    .locals 0
    .parameter "canBack"

    .prologue
    .line 230
    iput-boolean p1, p0, Lcom/jingdong/app/lib/base/activity/DialogController;->canBack:Z

    .line 231
    return-void
.end method

.method public setCanceledOnTouchOutside(Z)V
    .locals 0
    .parameter "canceled"

    .prologue
    .line 249
    iput-boolean p1, p0, Lcom/jingdong/app/lib/base/activity/DialogController;->canceledOnTouchOutside:Z

    .line 250
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/jingdong/app/lib/base/activity/DialogController;->alertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/jingdong/app/lib/base/activity/DialogController;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 144
    :goto_0
    return-void

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/lib/base/activity/DialogController;->builder:Landroid/app/AlertDialog$Builder;

    if-eqz v0, :cond_1

    .line 140
    iget-object v0, p0, Lcom/jingdong/app/lib/base/activity/DialogController;->builder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 142
    :cond_1
    iput-object p1, p0, Lcom/jingdong/app/lib/base/activity/DialogController;->initMessage:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "text"

    .prologue
    const/4 v1, -0x2

    .line 184
    iget-object v0, p0, Lcom/jingdong/app/lib/base/activity/DialogController;->alertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 185
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/jingdong/app/lib/base/activity/DialogController;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 195
    :goto_0
    return-void

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/lib/base/activity/DialogController;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v1, p1, p0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 190
    :cond_1
    iget-object v0, p0, Lcom/jingdong/app/lib/base/activity/DialogController;->builder:Landroid/app/AlertDialog$Builder;

    if-eqz v0, :cond_2

    .line 191
    iget-object v0, p0, Lcom/jingdong/app/lib/base/activity/DialogController;->builder:Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/jingdong/app/lib/base/activity/DialogController;->initNegativeButton:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 193
    :cond_2
    iput-object p1, p0, Lcom/jingdong/app/lib/base/activity/DialogController;->initNegativeButton:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public setNeutralButton(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "text"

    .prologue
    const/4 v1, -0x3

    .line 167
    iget-object v0, p0, Lcom/jingdong/app/lib/base/activity/DialogController;->alertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 168
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/jingdong/app/lib/base/activity/DialogController;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 178
    :goto_0
    return-void

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/lib/base/activity/DialogController;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v1, p1, p0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 173
    :cond_1
    iget-object v0, p0, Lcom/jingdong/app/lib/base/activity/DialogController;->builder:Landroid/app/AlertDialog$Builder;

    if-eqz v0, :cond_2

    .line 174
    iget-object v0, p0, Lcom/jingdong/app/lib/base/activity/DialogController;->builder:Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/jingdong/app/lib/base/activity/DialogController;->initNeutralButton:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 176
    :cond_2
    iput-object p1, p0, Lcom/jingdong/app/lib/base/activity/DialogController;->initNeutralButton:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "text"

    .prologue
    const/4 v1, -0x1

    .line 150
    iget-object v0, p0, Lcom/jingdong/app/lib/base/activity/DialogController;->alertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 151
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/jingdong/app/lib/base/activity/DialogController;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 161
    :goto_0
    return-void

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/lib/base/activity/DialogController;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v1, p1, p0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 156
    :cond_1
    iget-object v0, p0, Lcom/jingdong/app/lib/base/activity/DialogController;->builder:Landroid/app/AlertDialog$Builder;

    if-eqz v0, :cond_2

    .line 157
    iget-object v0, p0, Lcom/jingdong/app/lib/base/activity/DialogController;->builder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 159
    :cond_2
    iput-object p1, p0, Lcom/jingdong/app/lib/base/activity/DialogController;->initPositiveButton:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/jingdong/app/lib/base/activity/DialogController;->alertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/jingdong/app/lib/base/activity/DialogController;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 131
    :goto_0
    return-void

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/lib/base/activity/DialogController;->builder:Landroid/app/AlertDialog$Builder;

    if-eqz v0, :cond_1

    .line 127
    iget-object v0, p0, Lcom/jingdong/app/lib/base/activity/DialogController;->builder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 129
    :cond_1
    iput-object p1, p0, Lcom/jingdong/app/lib/base/activity/DialogController;->initTitle:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public setView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 213
    iget-object v0, p0, Lcom/jingdong/app/lib/base/activity/DialogController;->alertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/jingdong/app/lib/base/activity/DialogController;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 220
    :goto_0
    return-void

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/lib/base/activity/DialogController;->builder:Landroid/app/AlertDialog$Builder;

    if-eqz v0, :cond_1

    .line 216
    iget-object v0, p0, Lcom/jingdong/app/lib/base/activity/DialogController;->builder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 218
    :cond_1
    iput-object p1, p0, Lcom/jingdong/app/lib/base/activity/DialogController;->view:Landroid/view/View;

    goto :goto_0
.end method

.method public show()V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/jingdong/app/lib/base/activity/DialogController;->alertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/jingdong/app/lib/base/activity/DialogController;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 106
    :goto_0
    return-void

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/lib/base/activity/DialogController;->builder:Landroid/app/AlertDialog$Builder;

    if-eqz v0, :cond_1

    .line 101
    iget-object v0, p0, Lcom/jingdong/app/lib/base/activity/DialogController;->builder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/lib/base/activity/DialogController;->alertDialog:Landroid/app/AlertDialog;

    .line 102
    iget-object v0, p0, Lcom/jingdong/app/lib/base/activity/DialogController;->alertDialog:Landroid/app/AlertDialog;

    iget-boolean v1, p0, Lcom/jingdong/app/lib/base/activity/DialogController;->canceledOnTouchOutside:Z

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    goto :goto_0

    .line 104
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "builder is null, need init this controller"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
