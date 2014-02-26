.class Lcom/jingdong/app/mall/search/CameraPurchaseActivity$1;
.super Ljava/lang/Object;
.source "CameraPurchaseActivity.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$OnAllListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/search/CameraPurchaseActivity;->getWareType()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/search/CameraPurchaseActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/search/CameraPurchaseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/search/CameraPurchaseActivity$1;->this$0:Lcom/jingdong/app/mall/search/CameraPurchaseActivity;

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/search/CameraPurchaseActivity$1;)Lcom/jingdong/app/mall/search/CameraPurchaseActivity;
    .locals 1
    .parameter

    .prologue
    .line 124
    iget-object v0, p0, Lcom/jingdong/app/mall/search/CameraPurchaseActivity$1;->this$0:Lcom/jingdong/app/mall/search/CameraPurchaseActivity;

    return-object v0
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 9
    .parameter "httpResponse"

    .prologue
    .line 160
    :try_start_0
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v1

    const-string v3, "wareTypes"

    invoke-virtual {v1, v3}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v6

    .line 161
    .local v6, arrayPoxy:Lcom/jingdong/common/utils/JSONArrayPoxy;
    invoke-static {v6}, Lcom/jingdong/common/entity/WareType;->toList(Lcom/jingdong/common/utils/JSONArrayPoxy;)Ljava/util/ArrayList;

    move-result-object v2

    .line 162
    .local v2, wareTypes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/WareType;>;"
    if-nez v2, :cond_0

    .line 222
    .end local v2           #wareTypes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/WareType;>;"
    .end local v6           #arrayPoxy:Lcom/jingdong/common/utils/JSONArrayPoxy;
    :goto_0
    return-void

    .line 165
    .restart local v2       #wareTypes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/WareType;>;"
    .restart local v6       #arrayPoxy:Lcom/jingdong/common/utils/JSONArrayPoxy;
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    sput-object v1, Lcom/jingdong/app/mall/search/CameraPurchaseActivity;->category_name_array:[Ljava/lang/String;

    .line 166
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    sput-object v1, Lcom/jingdong/app/mall/search/CameraPurchaseActivity;->category_type_array:[Ljava/lang/String;

    .line 167
    iget-object v1, p0, Lcom/jingdong/app/mall/search/CameraPurchaseActivity$1;->this$0:Lcom/jingdong/app/mall/search/CameraPurchaseActivity;

    const-string v3, ""

    #setter for: Lcom/jingdong/app/mall/search/CameraPurchaseActivity;->categoryTypeArray:Ljava/lang/String;
    invoke-static {v1, v3}, Lcom/jingdong/app/mall/search/CameraPurchaseActivity;->access$0(Lcom/jingdong/app/mall/search/CameraPurchaseActivity;Ljava/lang/String;)V

    .line 168
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    sget-object v1, Lcom/jingdong/app/mall/search/CameraPurchaseActivity;->category_type_array:[Ljava/lang/String;

    array-length v1, v1

    if-lt v7, v1, :cond_1

    .line 184
    new-instance v0, Lcom/jingdong/common/utils/MySimpleAdapter;

    iget-object v1, p0, Lcom/jingdong/app/mall/search/CameraPurchaseActivity$1;->this$0:Lcom/jingdong/app/mall/search/CameraPurchaseActivity;

    const v3, 0x7f03000b

    .line 185
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v8, "name"

    aput-object v8, v4, v5

    const/4 v5, 0x1

    const-string v8, "description"

    aput-object v8, v4, v5

    const/4 v5, 0x2

    const-string v8, "iconUrl"

    aput-object v8, v4, v5

    const/4 v5, 0x3

    new-array v5, v5, [I

    fill-array-data v5, :array_0

    .line 184
    invoke-direct/range {v0 .. v5}, Lcom/jingdong/common/utils/MySimpleAdapter;-><init>(Lcom/jingdong/common/frame/IMyActivity;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 186
    .local v0, adapter:Lcom/jingdong/common/utils/MySimpleAdapter;
    iget-object v1, p0, Lcom/jingdong/app/mall/search/CameraPurchaseActivity$1;->this$0:Lcom/jingdong/app/mall/search/CameraPurchaseActivity;

    new-instance v3, Lcom/jingdong/app/mall/search/CameraPurchaseActivity$1$2;

    invoke-direct {v3, p0, v0}, Lcom/jingdong/app/mall/search/CameraPurchaseActivity$1$2;-><init>(Lcom/jingdong/app/mall/search/CameraPurchaseActivity$1;Lcom/jingdong/common/utils/MySimpleAdapter;)V

    invoke-virtual {v1, v3}, Lcom/jingdong/app/mall/search/CameraPurchaseActivity;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 216
    .end local v0           #adapter:Lcom/jingdong/common/utils/MySimpleAdapter;
    .end local v2           #wareTypes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/WareType;>;"
    .end local v6           #arrayPoxy:Lcom/jingdong/common/utils/JSONArrayPoxy;
    .end local v7           #i:I
    :catch_0
    move-exception v1

    goto :goto_0

    .line 169
    .restart local v2       #wareTypes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/WareType;>;"
    .restart local v6       #arrayPoxy:Lcom/jingdong/common/utils/JSONArrayPoxy;
    .restart local v7       #i:I
    :cond_1
    sget-object v3, Lcom/jingdong/app/mall/search/CameraPurchaseActivity;->category_type_array:[Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jingdong/common/entity/WareType;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/WareType;->getType()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v7

    .line 170
    sget-object v3, Lcom/jingdong/app/mall/search/CameraPurchaseActivity;->category_name_array:[Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jingdong/common/entity/WareType;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/WareType;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v7

    .line 171
    if-nez v7, :cond_2

    .line 172
    iget-object v1, p0, Lcom/jingdong/app/mall/search/CameraPurchaseActivity$1;->this$0:Lcom/jingdong/app/mall/search/CameraPurchaseActivity;

    #getter for: Lcom/jingdong/app/mall/search/CameraPurchaseActivity;->categoryTypeArray:Ljava/lang/String;
    invoke-static {v1}, Lcom/jingdong/app/mall/search/CameraPurchaseActivity;->access$1(Lcom/jingdong/app/mall/search/CameraPurchaseActivity;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/jingdong/app/mall/search/CameraPurchaseActivity;->category_type_array:[Ljava/lang/String;

    aget-object v3, v3, v7

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/jingdong/app/mall/search/CameraPurchaseActivity;->categoryTypeArray:Ljava/lang/String;
    invoke-static {v1, v3}, Lcom/jingdong/app/mall/search/CameraPurchaseActivity;->access$0(Lcom/jingdong/app/mall/search/CameraPurchaseActivity;Ljava/lang/String;)V

    .line 168
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 174
    :cond_2
    iget-object v1, p0, Lcom/jingdong/app/mall/search/CameraPurchaseActivity$1;->this$0:Lcom/jingdong/app/mall/search/CameraPurchaseActivity;

    #getter for: Lcom/jingdong/app/mall/search/CameraPurchaseActivity;->categoryTypeArray:Ljava/lang/String;
    invoke-static {v1}, Lcom/jingdong/app/mall/search/CameraPurchaseActivity;->access$1(Lcom/jingdong/app/mall/search/CameraPurchaseActivity;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ","

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/jingdong/app/mall/search/CameraPurchaseActivity;->category_type_array:[Ljava/lang/String;

    aget-object v4, v4, v7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/jingdong/app/mall/search/CameraPurchaseActivity;->categoryTypeArray:Ljava/lang/String;
    invoke-static {v1, v3}, Lcom/jingdong/app/mall/search/CameraPurchaseActivity;->access$0(Lcom/jingdong/app/mall/search/CameraPurchaseActivity;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 185
    nop

    :array_0
    .array-data 0x4
        0x79t 0x0t 0xct 0x7ft
        0x7at 0x0t 0xct 0x7ft
        0x78t 0x0t 0xct 0x7ft
    .end array-data
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 2
    .parameter "error"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/jingdong/app/mall/search/CameraPurchaseActivity$1;->this$0:Lcom/jingdong/app/mall/search/CameraPurchaseActivity;

    new-instance v1, Lcom/jingdong/app/mall/search/CameraPurchaseActivity$1$1;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/search/CameraPurchaseActivity$1$1;-><init>(Lcom/jingdong/app/mall/search/CameraPurchaseActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/search/CameraPurchaseActivity;->post(Ljava/lang/Runnable;)V

    .line 155
    return-void
.end method

.method public onProgress(II)V
    .locals 0
    .parameter "max"
    .parameter "progress"

    .prologue
    .line 129
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 227
    return-void
.end method
