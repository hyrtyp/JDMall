.class Lcom/jingdong/app/mall/category/CategoryActivity$8;
.super Ljava/lang/Object;
.source "CategoryActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/category/CategoryActivity;->setEvents()V
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
    iput-object p1, p0, Lcom/jingdong/app/mall/category/CategoryActivity$8;->this$0:Lcom/jingdong/app/mall/category/CategoryActivity;

    .line 535
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 538
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity$8;->this$0:Lcom/jingdong/app/mall/category/CategoryActivity;

    const-string v1, "0"

    const/4 v2, 0x0

    #calls: Lcom/jingdong/app/mall/category/CategoryActivity;->loadCategory(Ljava/lang/String;I)V
    invoke-static {v0, v1, v2}, Lcom/jingdong/app/mall/category/CategoryActivity;->access$44(Lcom/jingdong/app/mall/category/CategoryActivity;Ljava/lang/String;I)V

    .line 539
    return-void
.end method
