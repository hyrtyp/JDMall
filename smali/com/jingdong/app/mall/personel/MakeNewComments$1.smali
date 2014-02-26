.class Lcom/jingdong/app/mall/personel/MakeNewComments$1;
.super Ljava/lang/Object;
.source "MakeNewComments.java"

# interfaces
.implements Landroid/widget/RatingBar$OnRatingBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/MakeNewComments;->initComponent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/personel/MakeNewComments;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/personel/MakeNewComments;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/MakeNewComments$1;->this$0:Lcom/jingdong/app/mall/personel/MakeNewComments;

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRatingChanged(Landroid/widget/RatingBar;FZ)V
    .locals 2
    .parameter "ratingBar"
    .parameter "rating"
    .parameter "fromUser"

    .prologue
    const/4 v1, 0x1

    .line 106
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MakeNewComments$1;->this$0:Lcom/jingdong/app/mall/personel/MakeNewComments;

    #getter for: Lcom/jingdong/app/mall/personel/MakeNewComments;->commentScore:Landroid/widget/RatingBar;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MakeNewComments;->access$0(Lcom/jingdong/app/mall/personel/MakeNewComments;)Landroid/widget/RatingBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RatingBar;->getProgress()I

    move-result v0

    if-ge v0, v1, :cond_0

    .line 107
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MakeNewComments$1;->this$0:Lcom/jingdong/app/mall/personel/MakeNewComments;

    #getter for: Lcom/jingdong/app/mall/personel/MakeNewComments;->commentScore:Landroid/widget/RatingBar;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MakeNewComments;->access$0(Lcom/jingdong/app/mall/personel/MakeNewComments;)Landroid/widget/RatingBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RatingBar;->setProgress(I)V

    .line 109
    :cond_0
    return-void
.end method
