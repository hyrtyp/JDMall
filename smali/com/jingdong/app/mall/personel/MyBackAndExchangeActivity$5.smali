.class Lcom/jingdong/app/mall/personel/MyBackAndExchangeActivity$5;
.super Ljava/lang/Object;
.source "MyBackAndExchangeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/MyBackAndExchangeActivity;->createListView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/personel/MyBackAndExchangeActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/personel/MyBackAndExchangeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/MyBackAndExchangeActivity$5;->this$0:Lcom/jingdong/app/mall/personel/MyBackAndExchangeActivity;

    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 278
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyBackAndExchangeActivity$5;->this$0:Lcom/jingdong/app/mall/personel/MyBackAndExchangeActivity;

    #getter for: Lcom/jingdong/app/mall/personel/MyBackAndExchangeActivity;->adapter:Lcom/jingdong/common/utils/MySimpleAdapter;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MyBackAndExchangeActivity;->access$2(Lcom/jingdong/app/mall/personel/MyBackAndExchangeActivity;)Lcom/jingdong/common/utils/MySimpleAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jingdong/common/utils/MySimpleAdapter;->notifyDataSetChanged()V

    .line 279
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyBackAndExchangeActivity$5;->this$0:Lcom/jingdong/app/mall/personel/MyBackAndExchangeActivity;

    #getter for: Lcom/jingdong/app/mall/personel/MyBackAndExchangeActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MyBackAndExchangeActivity;->access$3(Lcom/jingdong/app/mall/personel/MyBackAndExchangeActivity;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 280
    return-void
.end method
