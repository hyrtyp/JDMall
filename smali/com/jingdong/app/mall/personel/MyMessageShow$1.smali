.class Lcom/jingdong/app/mall/personel/MyMessageShow$1;
.super Ljava/lang/Object;
.source "MyMessageShow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/app/mall/personel/MyMessageShow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/personel/MyMessageShow;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/personel/MyMessageShow;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/MyMessageShow$1;->this$0:Lcom/jingdong/app/mall/personel/MyMessageShow;

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/personel/MyMessageShow$1;)Lcom/jingdong/app/mall/personel/MyMessageShow;
    .locals 1
    .parameter

    .prologue
    .line 129
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyMessageShow$1;->this$0:Lcom/jingdong/app/mall/personel/MyMessageShow;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyMessageShow$1;->this$0:Lcom/jingdong/app/mall/personel/MyMessageShow;

    new-instance v1, Lcom/jingdong/app/mall/personel/MyMessageShow$1$1;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/personel/MyMessageShow$1$1;-><init>(Lcom/jingdong/app/mall/personel/MyMessageShow$1;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/personel/MyMessageShow;->post(Ljava/lang/Runnable;)V

    .line 167
    return-void
.end method
