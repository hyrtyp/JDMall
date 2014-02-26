.class Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$EditOnTouchListener;
.super Ljava/lang/Object;
.source "ShoppingCartNewActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EditOnTouchListener"
.end annotation


# instance fields
.field private final MAX_CLICK_INTERVAL:I

.field private currentTime:J

.field private editTexts:Landroid/widget/TextView;

.field private price:D

.field textchangeListener:Lcom/jingdong/app/mall/shopping/EditProductCountDialog$EditTextNumChangeListener;

.field final synthetic this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;


# direct methods
.method public constructor <init>(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;DLcom/jingdong/app/mall/shopping/EditProductCountDialog$EditTextNumChangeListener;)V
    .locals 1
    .parameter
    .parameter "price"
    .parameter "textchangeListener"

    .prologue
    .line 2103
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$EditOnTouchListener;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    .line 2104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2096
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$EditOnTouchListener;->editTexts:Landroid/widget/TextView;

    .line 2101
    const/16 v0, 0x7d0

    iput v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$EditOnTouchListener;->MAX_CLICK_INTERVAL:I

    .line 2105
    iput-wide p2, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$EditOnTouchListener;->price:D

    .line 2106
    iput-object p4, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$EditOnTouchListener;->textchangeListener:Lcom/jingdong/app/mall/shopping/EditProductCountDialog$EditTextNumChangeListener;

    .line 2107
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 11
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    .line 2111
    iget-wide v3, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$EditOnTouchListener;->price:D

    const-wide/16 v9, 0x0

    cmpg-double v3, v3, v9

    if-gtz v3, :cond_1

    .line 2158
    :cond_0
    :goto_0
    return v1

    .line 2117
    :cond_1
    instance-of v3, p1, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    move-object v7, p1

    .line 2121
    check-cast v7, Landroid/widget/TextView;

    .line 2123
    .local v7, et:Landroid/widget/TextView;
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 2158
    :cond_2
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 2125
    :pswitch_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$EditOnTouchListener;->currentTime:J

    goto :goto_1

    .line 2128
    :pswitch_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v9, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$EditOnTouchListener;->currentTime:J

    sub-long/2addr v3, v9

    const-wide/16 v9, 0x7d0

    cmp-long v1, v3, v9

    if-gez v1, :cond_2

    .line 2132
    :try_start_0
    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 2140
    .local v2, num:I
    :goto_2
    new-instance v0, Lcom/jingdong/app/mall/shopping/EditProductCountDialog;

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$EditOnTouchListener;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    iget-wide v3, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$EditOnTouchListener;->price:D

    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$EditOnTouchListener;->textchangeListener:Lcom/jingdong/app/mall/shopping/EditProductCountDialog$EditTextNumChangeListener;

    invoke-direct/range {v0 .. v5}, Lcom/jingdong/app/mall/shopping/EditProductCountDialog;-><init>(Landroid/content/Context;IDLcom/jingdong/app/mall/shopping/EditProductCountDialog$EditTextNumChangeListener;)V

    .line 2141
    .local v0, dialog:Lcom/jingdong/app/mall/shopping/EditProductCountDialog;
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$EditOnTouchListener;->editTexts:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    .line 2144
    :try_start_1
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$EditOnTouchListener;->editTexts:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 2145
    .local v8, parentNum:I
    invoke-virtual {v0, v8}, Lcom/jingdong/app/mall/shopping/EditProductCountDialog;->setParentNum(I)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2152
    .end local v8           #parentNum:I
    :cond_3
    :goto_3
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$EditOnTouchListener;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    iput-object v0, v1, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->currEditDialog:Lcom/jingdong/app/mall/shopping/EditProductCountDialog;

    .line 2153
    invoke-virtual {v0}, Lcom/jingdong/app/mall/shopping/EditProductCountDialog;->show()V

    goto :goto_1

    .line 2133
    .end local v0           #dialog:Lcom/jingdong/app/mall/shopping/EditProductCountDialog;
    .end local v2           #num:I
    :catch_0
    move-exception v6

    .line 2137
    .local v6, e:Ljava/lang/NumberFormatException;
    const/4 v2, 0x1

    .restart local v2       #num:I
    goto :goto_2

    .line 2146
    .end local v6           #e:Ljava/lang/NumberFormatException;
    .restart local v0       #dialog:Lcom/jingdong/app/mall/shopping/EditProductCountDialog;
    :catch_1
    move-exception v1

    goto :goto_3

    .line 2123
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
