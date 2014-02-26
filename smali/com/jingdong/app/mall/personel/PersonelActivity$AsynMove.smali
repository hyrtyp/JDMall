.class Lcom/jingdong/app/mall/personel/PersonelActivity$AsynMove;
.super Landroid/os/AsyncTask;
.source "PersonelActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/app/mall/personel/PersonelActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AsynMove"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/personel/PersonelActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1673
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$AsynMove;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/jingdong/app/mall/personel/PersonelActivity$AsynMove;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Void;
    .locals 6
    .parameter "params"

    .prologue
    const/16 v5, 0x64

    const/4 v4, 0x0

    .line 1678
    aget-object v3, p1, v4

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    rem-int v3, v5, v3

    if-nez v3, :cond_0

    .line 1679
    aget-object v3, p1, v4

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    div-int v2, v5, v3

    .line 1686
    .local v2, times:I
    :goto_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-lt v1, v2, :cond_1

    .line 1694
    const/4 v3, 0x0

    return-object v3

    .line 1682
    .end local v1           #i:I
    .end local v2           #times:I
    :cond_0
    aget-object v3, p1, v4

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    div-int v3, v5, v3

    add-int/lit8 v2, v3, 0x1

    .restart local v2       #times:I
    goto :goto_0

    .line 1687
    .restart local v1       #i:I
    :cond_1
    invoke-virtual {p0, p1}, Lcom/jingdong/app/mall/personel/PersonelActivity$AsynMove;->publishProgress([Ljava/lang/Object;)V

    .line 1689
    const/4 v3, 0x0

    :try_start_0
    aget-object v3, p1, v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1686
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1690
    :catch_0
    move-exception v0

    .line 1691
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 4
    .parameter "params"

    .prologue
    const/16 v3, 0x64

    .line 1699
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$AsynMove;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    #getter for: Lcom/jingdong/app/mall/personel/PersonelActivity;->orderDrawer:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/jingdong/app/mall/personel/PersonelActivity;->access$29(Lcom/jingdong/app/mall/personel/PersonelActivity;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1700
    .local v0, lp:Landroid/view/ViewGroup$LayoutParams;
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ge v1, v3, :cond_1

    .line 1701
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1702
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lt v1, v3, :cond_2

    .line 1703
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1707
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$AsynMove;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    #getter for: Lcom/jingdong/app/mall/personel/PersonelActivity;->orderDrawer:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/jingdong/app/mall/personel/PersonelActivity;->access$29(Lcom/jingdong/app/mall/personel/PersonelActivity;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1709
    :cond_1
    return-void

    .line 1704
    :cond_2
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-gtz v1, :cond_0

    .line 1705
    const/4 v1, 0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0
.end method

.method protected bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/jingdong/app/mall/personel/PersonelActivity$AsynMove;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
