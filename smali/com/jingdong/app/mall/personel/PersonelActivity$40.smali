.class Lcom/jingdong/app/mall/personel/PersonelActivity$40;
.super Ljava/lang/Object;
.source "PersonelActivity.java"

# interfaces
.implements Lcom/jingdong/app/mall/amHelper/AmAnimationUtil$OnAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/PersonelActivity;->startAmAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/personel/PersonelActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$40;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    .line 2858
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStart(Landroid/view/animation/Animation;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 2862
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$40;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    #getter for: Lcom/jingdong/app/mall/personel/PersonelActivity;->am_enter:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/PersonelActivity;->access$77(Lcom/jingdong/app/mall/personel/PersonelActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2863
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 2867
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$40;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    #getter for: Lcom/jingdong/app/mall/personel/PersonelActivity;->am_enter:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/PersonelActivity;->access$77(Lcom/jingdong/app/mall/personel/PersonelActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 2868
    return-void
.end method
