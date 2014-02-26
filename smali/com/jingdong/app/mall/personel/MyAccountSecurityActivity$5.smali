.class Lcom/jingdong/app/mall/personel/MyAccountSecurityActivity$5;
.super Ljava/lang/Object;
.source "MyAccountSecurityActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/MyAccountSecurityActivity;->createListView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/personel/MyAccountSecurityActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/personel/MyAccountSecurityActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/MyAccountSecurityActivity$5;->this$0:Lcom/jingdong/app/mall/personel/MyAccountSecurityActivity;

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyAccountSecurityActivity$5;->this$0:Lcom/jingdong/app/mall/personel/MyAccountSecurityActivity;

    #getter for: Lcom/jingdong/app/mall/personel/MyAccountSecurityActivity;->adapter:Lcom/jingdong/common/utils/MySimpleAdapter;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MyAccountSecurityActivity;->access$2(Lcom/jingdong/app/mall/personel/MyAccountSecurityActivity;)Lcom/jingdong/common/utils/MySimpleAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jingdong/common/utils/MySimpleAdapter;->notifyDataSetChanged()V

    .line 237
    return-void
.end method
