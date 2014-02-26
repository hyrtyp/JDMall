.class Lcom/jingdong/app/mall/category/CategoryActivity$4;
.super Landroid/database/DataSetObserver;
.source "CategoryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/category/CategoryActivity;->setAdapter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/category/CategoryActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/category/CategoryActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/category/CategoryActivity$4;->this$0:Lcom/jingdong/app/mall/category/CategoryActivity;

    .line 334
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity$4;->this$0:Lcom/jingdong/app/mall/category/CategoryActivity;

    #calls: Lcom/jingdong/app/mall/category/CategoryActivity;->setupSubStateView()V
    invoke-static {v0}, Lcom/jingdong/app/mall/category/CategoryActivity;->access$21(Lcom/jingdong/app/mall/category/CategoryActivity;)V

    .line 341
    return-void
.end method
