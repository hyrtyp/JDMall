.class Lcom/jingdong/app/mall/personel/MyWebMessage$2;
.super Ljava/lang/Object;
.source "MyWebMessage.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/MyWebMessage;->InitComponenet()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/personel/MyWebMessage;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/personel/MyWebMessage;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/MyWebMessage$2;->this$0:Lcom/jingdong/app/mall/personel/MyWebMessage;

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 2
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    const/4 v1, -0x1

    .line 171
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyWebMessage$2;->this$0:Lcom/jingdong/app/mall/personel/MyWebMessage;

    #getter for: Lcom/jingdong/app/mall/personel/MyWebMessage;->beforeYesterdayIndex:I
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MyWebMessage;->access$13(Lcom/jingdong/app/mall/personel/MyWebMessage;)I

    move-result v0

    if-lt p2, v0, :cond_1

    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyWebMessage$2;->this$0:Lcom/jingdong/app/mall/personel/MyWebMessage;

    #getter for: Lcom/jingdong/app/mall/personel/MyWebMessage;->beforeYesterdayIndex:I
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MyWebMessage;->access$13(Lcom/jingdong/app/mall/personel/MyWebMessage;)I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 173
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyWebMessage$2;->this$0:Lcom/jingdong/app/mall/personel/MyWebMessage;

    #getter for: Lcom/jingdong/app/mall/personel/MyWebMessage;->dayIcon:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MyWebMessage;->access$14(Lcom/jingdong/app/mall/personel/MyWebMessage;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0201fe

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 175
    :cond_1
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyWebMessage$2;->this$0:Lcom/jingdong/app/mall/personel/MyWebMessage;

    #getter for: Lcom/jingdong/app/mall/personel/MyWebMessage;->yesterdayIndex:I
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MyWebMessage;->access$15(Lcom/jingdong/app/mall/personel/MyWebMessage;)I

    move-result v0

    if-lt p2, v0, :cond_2

    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyWebMessage$2;->this$0:Lcom/jingdong/app/mall/personel/MyWebMessage;

    #getter for: Lcom/jingdong/app/mall/personel/MyWebMessage;->yesterdayIndex:I
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MyWebMessage;->access$15(Lcom/jingdong/app/mall/personel/MyWebMessage;)I

    move-result v0

    if-eq v0, v1, :cond_2

    .line 176
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyWebMessage$2;->this$0:Lcom/jingdong/app/mall/personel/MyWebMessage;

    #getter for: Lcom/jingdong/app/mall/personel/MyWebMessage;->dayIcon:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MyWebMessage;->access$14(Lcom/jingdong/app/mall/personel/MyWebMessage;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020202

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 178
    :cond_2
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyWebMessage$2;->this$0:Lcom/jingdong/app/mall/personel/MyWebMessage;

    #getter for: Lcom/jingdong/app/mall/personel/MyWebMessage;->todayIndex:I
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MyWebMessage;->access$16(Lcom/jingdong/app/mall/personel/MyWebMessage;)I

    move-result v0

    if-lt p2, v0, :cond_0

    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyWebMessage$2;->this$0:Lcom/jingdong/app/mall/personel/MyWebMessage;

    #getter for: Lcom/jingdong/app/mall/personel/MyWebMessage;->todayIndex:I
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MyWebMessage;->access$16(Lcom/jingdong/app/mall/personel/MyWebMessage;)I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 180
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyWebMessage$2;->this$0:Lcom/jingdong/app/mall/personel/MyWebMessage;

    #getter for: Lcom/jingdong/app/mall/personel/MyWebMessage;->dayIcon:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MyWebMessage;->access$14(Lcom/jingdong/app/mall/personel/MyWebMessage;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020201

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 166
    return-void
.end method
