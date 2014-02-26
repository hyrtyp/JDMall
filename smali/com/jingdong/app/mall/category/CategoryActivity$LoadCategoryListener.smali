.class Lcom/jingdong/app/mall/category/CategoryActivity$LoadCategoryListener;
.super Ljava/lang/Object;
.source "CategoryActivity.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/app/mall/category/CategoryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadCategoryListener"
.end annotation


# instance fields
.field private id:Ljava/lang/String;

.field private level:I

.field final synthetic this$0:Lcom/jingdong/app/mall/category/CategoryActivity;


# direct methods
.method public constructor <init>(Lcom/jingdong/app/mall/category/CategoryActivity;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter "id"
    .parameter "level"

    .prologue
    .line 1064
    iput-object p1, p0, Lcom/jingdong/app/mall/category/CategoryActivity$LoadCategoryListener;->this$0:Lcom/jingdong/app/mall/category/CategoryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1065
    iput-object p2, p0, Lcom/jingdong/app/mall/category/CategoryActivity$LoadCategoryListener;->id:Ljava/lang/String;

    .line 1066
    iput p3, p0, Lcom/jingdong/app/mall/category/CategoryActivity$LoadCategoryListener;->level:I

    .line 1067
    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/category/CategoryActivity$LoadCategoryListener;)I
    .locals 1
    .parameter

    .prologue
    .line 1062
    iget v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity$LoadCategoryListener;->level:I

    return v0
.end method

.method static synthetic access$1(Lcom/jingdong/app/mall/category/CategoryActivity$LoadCategoryListener;)Lcom/jingdong/app/mall/category/CategoryActivity;
    .locals 1
    .parameter

    .prologue
    .line 1059
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity$LoadCategoryListener;->this$0:Lcom/jingdong/app/mall/category/CategoryActivity;

    return-object v0
.end method

.method private showError()V
    .locals 2

    .prologue
    .line 1116
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity$LoadCategoryListener;->this$0:Lcom/jingdong/app/mall/category/CategoryActivity;

    new-instance v1, Lcom/jingdong/app/mall/category/CategoryActivity$LoadCategoryListener$3;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/category/CategoryActivity$LoadCategoryListener$3;-><init>(Lcom/jingdong/app/mall/category/CategoryActivity$LoadCategoryListener;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/category/CategoryActivity;->post(Ljava/lang/Runnable;)V

    .line 1127
    return-void
.end method

.method private validityCheck()Z
    .locals 2

    .prologue
    .line 1112
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity$LoadCategoryListener;->this$0:Lcom/jingdong/app/mall/category/CategoryActivity;

    #getter for: Lcom/jingdong/app/mall/category/CategoryActivity;->categoryId:Ljava/lang/String;
    invoke-static {v0}, Lcom/jingdong/app/mall/category/CategoryActivity;->access$0(Lcom/jingdong/app/mall/category/CategoryActivity;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/category/CategoryActivity$LoadCategoryListener;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 3
    .parameter "httpResponse"

    .prologue
    .line 1079
    invoke-direct {p0}, Lcom/jingdong/app/mall/category/CategoryActivity$LoadCategoryListener;->validityCheck()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1105
    :cond_0
    :goto_0
    return-void

    .line 1082
    :cond_1
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity$LoadCategoryListener;->this$0:Lcom/jingdong/app/mall/category/CategoryActivity;

    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v1

    const-string v2, "catelogyList"

    invoke-virtual {v1, v2}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v1

    #setter for: Lcom/jingdong/app/mall/category/CategoryActivity;->jsonArrayPoxy:Lcom/jingdong/common/utils/JSONArrayPoxy;
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/category/CategoryActivity;->access$5(Lcom/jingdong/app/mall/category/CategoryActivity;Lcom/jingdong/common/utils/JSONArrayPoxy;)V

    .line 1083
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity$LoadCategoryListener;->this$0:Lcom/jingdong/app/mall/category/CategoryActivity;

    #getter for: Lcom/jingdong/app/mall/category/CategoryActivity;->jsonArrayPoxy:Lcom/jingdong/common/utils/JSONArrayPoxy;
    invoke-static {v0}, Lcom/jingdong/app/mall/category/CategoryActivity;->access$6(Lcom/jingdong/app/mall/category/CategoryActivity;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity$LoadCategoryListener;->this$0:Lcom/jingdong/app/mall/category/CategoryActivity;

    #getter for: Lcom/jingdong/app/mall/category/CategoryActivity;->jsonArrayPoxy:Lcom/jingdong/common/utils/JSONArrayPoxy;
    invoke-static {v0}, Lcom/jingdong/app/mall/category/CategoryActivity;->access$6(Lcom/jingdong/app/mall/category/CategoryActivity;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 1084
    :cond_2
    invoke-direct {p0}, Lcom/jingdong/app/mall/category/CategoryActivity$LoadCategoryListener;->showError()V

    goto :goto_0

    .line 1086
    :cond_3
    iget v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity$LoadCategoryListener;->level:I

    if-nez v0, :cond_4

    .line 1087
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity$LoadCategoryListener;->this$0:Lcom/jingdong/app/mall/category/CategoryActivity;

    new-instance v1, Lcom/jingdong/app/mall/category/CategoryActivity$LoadCategoryListener$1;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/category/CategoryActivity$LoadCategoryListener$1;-><init>(Lcom/jingdong/app/mall/category/CategoryActivity$LoadCategoryListener;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/category/CategoryActivity;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1096
    :cond_4
    iget v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity$LoadCategoryListener;->level:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1097
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity$LoadCategoryListener;->this$0:Lcom/jingdong/app/mall/category/CategoryActivity;

    new-instance v1, Lcom/jingdong/app/mall/category/CategoryActivity$LoadCategoryListener$2;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/category/CategoryActivity$LoadCategoryListener$2;-><init>(Lcom/jingdong/app/mall/category/CategoryActivity$LoadCategoryListener;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/category/CategoryActivity;->post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 1
    .parameter "error"

    .prologue
    .line 1071
    invoke-direct {p0}, Lcom/jingdong/app/mall/category/CategoryActivity$LoadCategoryListener;->validityCheck()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1075
    :goto_0
    return-void

    .line 1074
    :cond_0
    invoke-direct {p0}, Lcom/jingdong/app/mall/category/CategoryActivity$LoadCategoryListener;->showError()V

    goto :goto_0
.end method

.method public onReady(Lcom/jingdong/common/utils/HttpGroup$HttpSettingParams;)V
    .locals 0
    .parameter "httpSettingParams"

    .prologue
    .line 1109
    return-void
.end method
