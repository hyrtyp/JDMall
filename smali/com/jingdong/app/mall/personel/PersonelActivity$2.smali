.class Lcom/jingdong/app/mall/personel/PersonelActivity$2;
.super Ljava/lang/Object;
.source "PersonelActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/PersonelActivity;->init()V
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
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$2;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    .line 635
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/personel/PersonelActivity$2;)Lcom/jingdong/app/mall/personel/PersonelActivity;
    .locals 1
    .parameter

    .prologue
    .line 635
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$2;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 642
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$2;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    new-instance v1, Lcom/jingdong/app/mall/personel/PersonelActivity$2$1;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/personel/PersonelActivity$2$1;-><init>(Lcom/jingdong/app/mall/personel/PersonelActivity$2;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/personel/PersonelActivity;->post(Ljava/lang/Runnable;)V

    .line 647
    return-void
.end method
