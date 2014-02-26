.class Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm$2;
.super Ljava/lang/Object;
.source "MyOrderPostPayConfirm.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm$2;->this$0:Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm$2;->this$0:Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;

    #calls: Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->submit()V
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;->access$4(Lcom/jingdong/app/mall/personel/MyOrderPostPayConfirm;)V

    .line 102
    return-void
.end method
