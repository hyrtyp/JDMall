.class public Lcom/jingdong/common/ui/DialogController;
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
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jingdong/common/ui/DialogController;->canBack:Z

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jingdong/common/ui/DialogController;->canceledOnTouchOutside:Z

    .line 21
    return-void
.end method

.method public static getSimpleDialogController(Landroid/content/Context;[Ljava/lang/String;ILandroid/content/DialogInterface$OnClickListener;)Lcom/jingdong/common/ui/DialogController;
    .locals 2
    .parameter "context"
    .parameter "dataSet"
    .parameter "checkedItem"
    .parameter "listener"

    .prologue
    .line 247
    new-instance v0, Lcom/jingdong/common/ui/DialogController;

    invoke-direct {v0}, Lcom/jingdong/common/ui/DialogController;-><init>()V

    .line 248
    .local v0, dialogController:Lcom/jingdong/common/ui/DialogController;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jingdong/common/ui/DialogController;->setCanBack(Z)V

    .line 249
    invoke-virtual {v0, p0}, Lcom/jingdong/common/ui/DialogController;->init(Landroid/content/Context;)V

    .line 250
    iget-object v1, v0, Lcom/jingdong/common/ui/DialogController;->builder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, p1, p2, p3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 251
    return-object v0
.end method


# virtual methods
.method public getButton(I)Landroid/widget/Button;
    .locals 2
    .parameter "whichButton"

    .prologue
    .line 212
    const/4 v0, 0x0

    .line 213
    .local v0, result:Landroid/widget/Button;
    iget-object v1, p0, Lcom/jingdong/common/ui/DialogController;->alertDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 214
    iget-object v1, p0, Lcom/jingdong/common/ui/DialogController;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 216
    :cond_0
    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 41
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jingdong/common/ui/DialogController;->builder:Landroid/app/AlertDialog$Builder;

    .line 42
    invoke-virtual {p0}, Lcom/jingdong/common/ui/DialogController;->initContent()V

    .line 43
    invoke-virtual {p0}, Lcom/jingdong/common/ui/DialogController;->initButton()V

    .line 44
    return-void
.end method

.method protected initButton()V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/jingdong/common/ui/DialogController;->initPositiveButton:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/jingdong/common/ui/DialogController;->builder:Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/jingdong/common/ui/DialogController;->initPositiveButton:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/ui/DialogController;->initNeutralButton:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 86
    iget-object v0, p0, Lcom/jingdong/common/ui/DialogController;->builder:Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/jingdong/common/ui/DialogController;->initNeutralButton:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 90
    :cond_1
    iget-object v0, p0, Lcom/jingdong/common/ui/DialogController;->initNegativeButton:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 91
    iget-object v0, p0, Lcom/jingdong/common/ui/DialogController;->builder:Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/jingdong/common/ui/DialogController;->initNegativeButton:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 94
    :cond_2
    return-void
.end method

.method protected initContent()V
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/jingdong/common/ui/DialogController;->initTitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/jingdong/common/ui/DialogController;->builder:Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/jingdong/common/ui/DialogController;->initTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/ui/DialogController;->initMessage:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 62
    iget-object v0, p0, Lcom/jingdong/common/ui/DialogController;->builder:Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/jingdong/common/ui/DialogController;->initMessage:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/jingdong/common/ui/DialogController;->view:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 67
    iget-object v0, p0, Lcom/jingdong/common/ui/DialogController;->builder:Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/jingdong/common/ui/DialogController;->view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 71
    :cond_2
    iget-object v0, p0, Lcom/jingdong/common/ui/DialogController;->builder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 72
    return-void
.end method

.method public isCanBack()Z
    .locals 1

    .prologue
    .line 233
    iget-boolean v0, p0, Lcom/jingdong/common/ui/DialogController;->canBack:Z

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 128
    return-void
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/jingdong/common/ui/DialogController;->isCanBack()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x4

    if-ne v0, p2, :cond_0

    .line 121
    const/4 v0, 0x1

    .line 123
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
    .line 240
    iput-boolean p1, p0, Lcom/jingdong/common/ui/DialogController;->canBack:Z

    .line 241
    return-void
.end method

.method public setCanceledOnTouchOutside(Z)V
    .locals 0
    .parameter "canceled"

    .prologue
    .line 259
    iput-boolean p1, p0, Lcom/jingdong/common/ui/DialogController;->canceledOnTouchOutside:Z

    .line 260
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 147
    iget-object v0, p0, Lcom/jingdong/common/ui/DialogController;->alertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/jingdong/common/ui/DialogController;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 154
    :goto_0
    return-void

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/ui/DialogController;->builder:Landroid/app/AlertDialog$Builder;

    if-eqz v0, :cond_1

    .line 150
    iget-object v0, p0, Lcom/jingdong/common/ui/DialogController;->builder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 152
    :cond_1
    iput-object p1, p0, Lcom/jingdong/common/ui/DialogController;->initMessage:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "text"

    .prologue
    const/4 v1, -0x2

    .line 194
    iget-object v0, p0, Lcom/jingdong/common/ui/DialogController;->alertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 195
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/jingdong/common/ui/DialogController;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 205
    :goto_0
    return-void

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/ui/DialogController;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v1, p1, p0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 200
    :cond_1
    iget-object v0, p0, Lcom/jingdong/common/ui/DialogController;->builder:Landroid/app/AlertDialog$Builder;

    if-eqz v0, :cond_2

    .line 201
    iget-object v0, p0, Lcom/jingdong/common/ui/DialogController;->builder:Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/jingdong/common/ui/DialogController;->initNegativeButton:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 203
    :cond_2
    iput-object p1, p0, Lcom/jingdong/common/ui/DialogController;->initNegativeButton:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public setNeutralButton(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "text"

    .prologue
    const/4 v1, -0x3

    .line 177
    iget-object v0, p0, Lcom/jingdong/common/ui/DialogController;->alertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 178
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/jingdong/common/ui/DialogController;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 188
    :goto_0
    return-void

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/ui/DialogController;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v1, p1, p0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 183
    :cond_1
    iget-object v0, p0, Lcom/jingdong/common/ui/DialogController;->builder:Landroid/app/AlertDialog$Builder;

    if-eqz v0, :cond_2

    .line 184
    iget-object v0, p0, Lcom/jingdong/common/ui/DialogController;->builder:Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/jingdong/common/ui/DialogController;->initNeutralButton:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 186
    :cond_2
    iput-object p1, p0, Lcom/jingdong/common/ui/DialogController;->initNeutralButton:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "text"

    .prologue
    const/4 v1, -0x1

    .line 160
    iget-object v0, p0, Lcom/jingdong/common/ui/DialogController;->alertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 161
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/jingdong/common/ui/DialogController;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 171
    :goto_0
    return-void

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/ui/DialogController;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v1, p1, p0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 166
    :cond_1
    iget-object v0, p0, Lcom/jingdong/common/ui/DialogController;->builder:Landroid/app/AlertDialog$Builder;

    if-eqz v0, :cond_2

    .line 167
    iget-object v0, p0, Lcom/jingdong/common/ui/DialogController;->builder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 169
    :cond_2
    iput-object p1, p0, Lcom/jingdong/common/ui/DialogController;->initPositiveButton:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/jingdong/common/ui/DialogController;->alertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/jingdong/common/ui/DialogController;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 141
    :goto_0
    return-void

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/ui/DialogController;->builder:Landroid/app/AlertDialog$Builder;

    if-eqz v0, :cond_1

    .line 137
    iget-object v0, p0, Lcom/jingdong/common/ui/DialogController;->builder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 139
    :cond_1
    iput-object p1, p0, Lcom/jingdong/common/ui/DialogController;->initTitle:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public setView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 223
    iget-object v0, p0, Lcom/jingdong/common/ui/DialogController;->alertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/jingdong/common/ui/DialogController;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 230
    :goto_0
    return-void

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/jingdong/common/ui/DialogController;->builder:Landroid/app/AlertDialog$Builder;

    if-eqz v0, :cond_1

    .line 226
    iget-object v0, p0, Lcom/jingdong/common/ui/DialogController;->builder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 228
    :cond_1
    iput-object p1, p0, Lcom/jingdong/common/ui/DialogController;->view:Landroid/view/View;

    goto :goto_0
.end method

.method public show()V
    .locals 3

    .prologue
    .line 100
    iget-object v1, p0, Lcom/jingdong/common/ui/DialogController;->alertDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 101
    iget-object v1, p0, Lcom/jingdong/common/ui/DialogController;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 116
    :goto_0
    return-void

    .line 102
    :cond_0
    iget-object v1, p0, Lcom/jingdong/common/ui/DialogController;->builder:Landroid/app/AlertDialog$Builder;

    if-eqz v1, :cond_1

    .line 104
    :try_start_0
    iget-object v1, p0, Lcom/jingdong/common/ui/DialogController;->builder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/jingdong/common/ui/DialogController;->alertDialog:Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :goto_1
    iget-object v1, p0, Lcom/jingdong/common/ui/DialogController;->alertDialog:Landroid/app/AlertDialog;

    iget-boolean v2, p0, Lcom/jingdong/common/ui/DialogController;->canceledOnTouchOutside:Z

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    goto :goto_0

    .line 105
    :catch_0
    move-exception v0

    .line 109
    .local v0, e:Ljava/lang/Throwable;
    invoke-static {}, Lcom/jingdong/common/utils/cache/GlobalImageCache;->getLruBitmapCache()Lcom/novoda/imageloader/core/cache/LruBitmapCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/novoda/imageloader/core/cache/LruBitmapCache;->clean()V

    .line 110
    iget-object v1, p0, Lcom/jingdong/common/ui/DialogController;->builder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/jingdong/common/ui/DialogController;->alertDialog:Landroid/app/AlertDialog;

    goto :goto_1

    .line 114
    .end local v0           #e:Ljava/lang/Throwable;
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "builder is null, need init this controller"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
