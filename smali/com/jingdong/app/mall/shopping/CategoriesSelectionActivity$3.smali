.class Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$3;
.super Ljava/lang/Object;
.source "CategoriesSelectionActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->findViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$3;->this$0:Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 236
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$3;->this$0:Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;

    #calls: Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->inflateData()V
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->access$13(Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;)V

    .line 237
    return-void
.end method
