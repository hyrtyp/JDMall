.class Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$Category;
.super Ljava/lang/Object;
.source "CategoriesSelectionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Category"
.end annotation


# instance fields
.field public cateLevel:I

.field public cateNum:J

.field public doc:Ljava/lang/String;

.field public isSelected:Z

.field final synthetic this$0:Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 355
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$Category;->this$0:Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 359
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$Category;->isSelected:Z

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 362
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$Category;->cateLevel:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity$Category;->cateNum:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
