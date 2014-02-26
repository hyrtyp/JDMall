.class Lcom/jingdong/app/mall/utils/JDMiaoShaProduct$2;
.super Ljava/lang/Object;
.source "JDMiaoShaProduct.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;->bindData(Lcom/jingdong/common/entity/Product;Landroid/view/View$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private sender:Landroid/app/PendingIntent;

.field final synthetic this$0:Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;

.field private timeInMillis:J

.field private final synthetic val$product:Lcom/jingdong/common/entity/Product;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;Lcom/jingdong/common/entity/Product;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct$2;->this$0:Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;

    iput-object p2, p0, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct$2;->val$product:Lcom/jingdong/common/entity/Product;

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11
    .parameter "v"

    .prologue
    const/4 v10, 0x0

    .line 166
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 167
    .local v4, curMillis:J
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct$2;->sender:Landroid/app/PendingIntent;

    if-nez v0, :cond_0

    .line 168
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 169
    .local v7, calendar:Ljava/util/Calendar;
    invoke-virtual {v7, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 170
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct$2;->this$0:Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;

    #getter for: Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;->millis:J
    invoke-static {v0}, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;->access$8(Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;)J

    move-result-wide v0

    const-wide/32 v2, 0xea60

    sub-long/2addr v0, v2

    long-to-int v0, v0

    div-int/lit16 v9, v0, 0x3e8

    .line 171
    .local v9, newMillis:I
    const/16 v0, 0xd

    invoke-virtual {v7, v0, v9}, Ljava/util/Calendar;->add(II)V

    .line 173
    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct$2;->timeInMillis:J

    .line 174
    new-instance v8, Landroid/content/Intent;

    iget-object v0, p0, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct$2;->this$0:Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;

    #getter for: Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;->context:Lcom/jingdong/app/mall/utils/MyActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;->access$9(Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;)Lcom/jingdong/app/mall/utils/MyActivity;

    move-result-object v0

    const-class v1, Lcom/jingdong/app/mall/home/PanicBuyingReceive;

    invoke-direct {v8, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 175
    .local v8, intent:Landroid/content/Intent;
    const-string v0, "com.jingdong.app.mall.panicbuying"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 176
    const/16 v0, 0x20

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 177
    const-string v0, "msg"

    iget-object v1, p0, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct$2;->val$product:Lcom/jingdong/common/entity/Product;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/Product;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    const-string v0, "id"

    iget-object v1, p0, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct$2;->this$0:Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;

    #getter for: Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;->request:I
    invoke-static {v1}, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;->access$10(Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;)I

    move-result v1

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 179
    const-string v0, "millis"

    iget-wide v1, p0, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct$2;->timeInMillis:J

    invoke-virtual {v8, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 180
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct$2;->this$0:Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;

    #getter for: Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;->context:Lcom/jingdong/app/mall/utils/MyActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;->access$9(Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;)Lcom/jingdong/app/mall/utils/MyActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct$2;->this$0:Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;

    #getter for: Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;->request:I
    invoke-static {v1}, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;->access$10(Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;)I

    move-result v1

    invoke-static {v0, v1, v8, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct$2;->sender:Landroid/app/PendingIntent;

    .line 182
    .end local v7           #calendar:Ljava/util/Calendar;
    .end local v8           #intent:Landroid/content/Intent;
    .end local v9           #newMillis:I
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct$2;->this$0:Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;

    #getter for: Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;->isChecked:Z
    invoke-static {v0}, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;->access$11(Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 187
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct$2;->this$0:Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;

    #getter for: Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;->alarmManager:Landroid/app/AlarmManager;
    invoke-static {v0}, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;->access$12(Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;)Landroid/app/AlarmManager;

    move-result-object v0

    iget-wide v1, p0, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct$2;->timeInMillis:J

    iget-object v3, p0, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct$2;->sender:Landroid/app/PendingIntent;

    invoke-virtual {v0, v10, v1, v2, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 190
    :try_start_0
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct$2;->this$0:Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;

    #getter for: Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;->request:I
    invoke-static {v0}, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;->access$10(Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;)I

    move-result v0

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct$2;->timeInMillis:J

    iget-object v6, p0, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct$2;->val$product:Lcom/jingdong/common/entity/Product;

    invoke-virtual {v6}, Lcom/jingdong/common/entity/Product;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lcom/jingdong/common/database/table/MS_AlarmTable;->insertOrUpdate(JJJLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 196
    :goto_0
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct$2;->this$0:Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;

    invoke-virtual {v0}, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;->setOn()V

    .line 197
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct$2;->this$0:Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;

    #getter for: Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;->context:Lcom/jingdong/app/mall/utils/MyActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;->access$9(Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;)Lcom/jingdong/app/mall/utils/MyActivity;

    move-result-object v0

    const-string v1, "\u79d2\u6740\u95f9\u949f\u5df2\u5f00\u542f\uff0c\u5728\u5546\u54c1\u79d2\u6740\u524d1\u5206\u949f\u5c06\u63d0\u793a\u60a8\uff01"

    invoke-static {v0, v1, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 213
    :goto_1
    return-void

    .line 199
    :cond_1
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct$2;->this$0:Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;

    #getter for: Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;->alarmManager:Landroid/app/AlarmManager;
    invoke-static {v0}, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;->access$12(Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;)Landroid/app/AlarmManager;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct$2;->sender:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 201
    :try_start_1
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct$2;->this$0:Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;

    #getter for: Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;->request:I
    invoke-static {v0}, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;->access$10(Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;)I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/jingdong/common/database/table/MS_AlarmTable;->delById(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 207
    :goto_2
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct$2;->this$0:Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;

    invoke-virtual {v0}, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;->setOff()V

    .line 208
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct$2;->this$0:Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;

    #getter for: Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;->context:Lcom/jingdong/app/mall/utils/MyActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;->access$9(Lcom/jingdong/app/mall/utils/JDMiaoShaProduct;)Lcom/jingdong/app/mall/utils/MyActivity;

    move-result-object v0

    const-string v1, "\u79d2\u6740\u95f9\u949f\u5df2\u53d6\u6d88\uff01\u60a8\u53ef\u80fd\u4f1a\u62a2\u4e0d\u5230\u5466~"

    invoke-static {v0, v1, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 202
    :catch_0
    move-exception v0

    goto :goto_2

    .line 191
    :catch_1
    move-exception v0

    goto :goto_0
.end method
